// Package imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:projects_db/projects_db.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:theta_models/theta_models.dart';
import 'package:light_logger/light_logger.dart';

class ColorStylesCubit extends Cubit<List<ColorStyleModel>> {
  ColorStylesCubit(
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
        } else {
          final styles = <ColorStyleModel>[];
          for (final map in resp) {
            if (!(map as Map<String, dynamic>).containsKey('light')) return;
            final e = const ColorStylesMapper().fromJson(json: map);
            if (styles.indexWhere((element) => element.name == e.name) == -1) {
              styles.add(e);
            }
          }
          emit(styles);
        }
      });
  }

  Future<List<ColorStyleModel>> fetchAndOptionalMigration(
    final ProjectID prjId,
  ) async {
    final styles = await _fetchFromTetaDB();
    if (styles.isNotEmpty) return styles;
    final res = await _fetchStyles(prjId);
    final futures = <Future>[];
    for (final color in res) {
      final map = color as Map<String, dynamic>;
      map['prj_id'] = null;
      map['channel_id'] = channelId;
      final resp =
          await ProjectsDB.instance.client.insert('color_styles', data: map);
      if (resp.error != null) {
        Logger.printError(
          'Error inserting a new color style: ${resp.error?.message}',
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
          .from('color_styles')
          .select()
          .eq('prj_id', projectID);
    } catch (e) {
      Logger.printError(
        'Problem fetching styles, error: $e',
      );
      return [];
    }
  }

  Future<List<ColorStyleModel>> _fetchFromTetaDB() async {
    final resp = await ProjectsDB.instance.client.selectList(
      'color_styles',
      match: <String, dynamic>{
        'channel_id': channelId,
      },
    );
    if (resp.error != null) {
      Logger.printError(
        'Error fetching styles, error: ${resp.error?.message}',
      );
      return <ColorStyleModel>[];
    }
    final styles = <ColorStyleModel>[];
    for (final map in resp.data ?? <dynamic>[]) {
      final e = const ColorStylesMapper().fromJson(json: map);
      if (styles.indexWhere((element) => element.name == e.name) == -1) {
        styles.add(e);
      }
    }
    return styles;
  }
}
