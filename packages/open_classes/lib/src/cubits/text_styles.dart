// Package imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:projects_db/projects_db.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theta_models/theta_models.dart';
import 'package:light_logger/light_logger.dart';

class TextStylesCubit extends Cubit<List<TextStyleModel>> {
  TextStylesCubit(
    this.channelId,
  ) : super([]);

  final ChannelID channelId;
  ProjectsDBStream? sub;

  Future<void> fetch(final ProjectID prjId) async {
    final styles = await fetchAndOptionalMigration(prjId);
    emit(styles);
    sub?.disconnect();
    sub = ProjectsDBStream()
      ..connect()
      ..subscribe('channel_id', channelId)
      ..onEvent((final dynamic resp) {
        if (resp is! List<dynamic>) {
          return;
        }
        final styles = <TextStyleModel>[];
        for (final map in resp) {
          if (!(map as Map<String, dynamic>).containsKey('size')) return;
          styles.add(TextStyleModel.fromJson(json: map));
        }
        emit(styles);
      });
  }

  Future<List<TextStyleModel>> fetchAndOptionalMigration(
    final ProjectID prjId,
  ) async {
    final styles = await _fetchFromTetaDB();
    if (styles.isNotEmpty) return styles;
    final res = await _fetchStyles(prjId);
    final stylesList = res
        .map(
          (final dynamic e) => TextStyleModel.fromJson(
            json: e as Map<String, dynamic>,
            channelId: channelId,
          ),
        )
        .toList();
    final futures = <Future>[];
    for (final color in stylesList) {
      final map = color.toJson();
      map['prj_id'] = null;
      map['channel_id'] = channelId;
      final resp =
          await ProjectsDB.instance.client.insert('text_styles', data: map);
      if (resp.error != null) {
        Logger.printError(
          'Error inserting a new text style: ${resp.error?.message}',
        );
      }
    }
    await Future.wait<void>(futures);
    final styles2 = await _fetchFromTetaDB();
    if (styles2.isNotEmpty) return styles2;
    return [];
  }

  Future<List<dynamic>> _fetchStyles(final ProjectID projectID) async {
    try {
      return await Supabase.instance.client
          .from('text_styles')
          .select()
          .eq('prj_id', projectID);
    } catch (e) {
      Logger.printError(
        'Problem fetching styles, error: $e',
      );
      return [];
    }
  }

  Future<List<TextStyleModel>> _fetchFromTetaDB() async {
    final resp = await ProjectsDB.instance.client.selectList(
      'text_styles',
      match: <String, dynamic>{
        'channel_id': channelId,
      },
    );
    if (resp.error != null) {
      Logger.printError(
        'Error fetching styles, error: ${resp.error?.message}',
      );
      return <TextStyleModel>[];
    }
    final styles = <TextStyleModel>[];
    for (final map in resp.data ?? <dynamic>[]) {
      styles.add(
        TextStyleModel.fromJson(
          json: map as Map<String, dynamic>,
        ),
      );
    }
    return styles;
  }
}
