
import 'package:clear_response/clear_response.dart';
import 'package:collection/collection.dart';
import 'package:device_frame/device_frame.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:projects_db/projects_db.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_rendering/theta_rendering.dart';
import 'package:theta/theta.dart';

class ThetaCore {
  ThetaCore(
    final int channelId,
    final String token,
  ) : _channelId = channelId;

  final int _channelId;

  final nodeRendering = const NodeRendering();

  PageEntity? _page;

  ColorStyles _colorStyles = [];
  TextStyles _textStyles = [];

  Future<Either<Exception, void>> initialize() async {
    try {
      return const Right(null);
    } catch (e) {
      return Left(e as Exception);
    }
  }

  Future<ClearResponse<CNode?, ClearErrorResponse?>> _fetchComponent(
      final String componentName) async {
    final res = await ProjectsDB.I.client.selectSingle('pages', match: {
      'name': componentName,
      'channel_id': _channelId,
    });
    if (res.error != null) {
      return ClearResponse(
        data: null,
        error: res.error,
      );
    }
    if (res.data == null) {
      return ClearResponse(
        data: null,
        error: ClearErrorResponse(
          message: 'Component not found',
          code: 404,
        ),
      );
    }
    _page = const PageMapper().fromJson(res.data!);
    final list = await ProjectsDB.I.client.selectList(
      'nodes',
      match: {'page_id': _page!.id},
    );
    if (list.error != null) {
      return ClearResponse(
        data: null,
        error: ClearErrorResponse(
          message: list.error?.message,
          code: list.error?.code,
        ),
      );
    }
    final nodes = list.data!
        .map((e) => const NodesParse().fromJson(e['type'], e))
        .whereNotNull()
        .toList();

    print('-----------------');
    for (final node in nodes) {
      print(
          '${node.intrinsicState.displayName}, id: ${node.id}, ids: ${node.childrenIds.ids}');
    }
    final rootNode = nodeRendering.renderTree(nodes);
    print('-----------------');
    print('*** TREE ***');
    print(rootNode);
    return ClearResponse(data: rootNode, error: null);
  }

  /// Fetches color styles from the database
  Future<void> _fetchColorStyles() async {
    final res = await ProjectsDB.I.client.selectList('color_styles', match: {
      'channel_id': _channelId,
    });
    if (res.error != null) {
      throw res.error!;
    }
    _colorStyles = res.data!
        .map((e) =>
            const ColorStylesMapper().fromJson(json: e as Map<String, dynamic>))
        .toList();
  }

  /// Fetches text styles from the database
  Future<void> _fetchTextStyles() async {
    final res = await ProjectsDB.I.client.selectList('text_styles', match: {
      'channel_id': _channelId,
    });
    if (res.error != null) {
      throw res.error!;
    }
    _textStyles = res.data!
        .map((e) => TextStyleModel.fromJson(json: e as Map<String, dynamic>))
        .toList();
  }

  Future<Either<Exception, Widget>> build(
    final BuildContext context,
    final String componentName, {
    final List<Workflow>? workflows,
    final ThemeMode? theme = ThemeMode.light,
    final List<Var>? parameters,
    final List<Var>? states,
  }) async {
    final res = await _fetchComponent(componentName);

    if (res.error != null) {
      return ClearResponse(
        data: const SizedBox(),
        error: ClearErrorResponse(
          message: res.error?.message,
          code: res.error?.code,
        ),
      );
    }
    if (res.data == null) {
      return ClearResponse(
        data: const SizedBox(),
        error: ClearErrorResponse(
          message: 'Component not found',
          code: 404,
        ),
      );
    }

    final parameters0 = _page!.defaultParams;
    final states0 = _page!.defaultStates;

    if (parameters != null) {
      for (final v in parameters) {
        final i = parameters0.indexWhere((e) => e.name == v.name);
        if (i != -1) {
          parameters0[i] = parameters0[i].copyWith(value: v.value);
        }
      }
    }

    if (states != null) {
      for (final v in states) {
        final i = states0.indexWhere((e) => e.name == v.name);
        if (i != -1) {
          states0[i] = states0[i].copyWith(value: v.value);
        }
      }
    }

    return ClearResponse(
      data: TreeGlobalState(
        state: TreeState(
          forPlay: true,
          params: parameters0,
          states: states0,
          pageId: _page!.id,
          isPage: _page!.isPage,
          colorStyles: _colorStyles,
          textStyles: _textStyles,
          localization: FlutterLocalization.instance,
          theme: theme!,
          deviceInfo: DeviceInfo.genericPhone(
            platform: TargetPlatform.iOS,
            id: '',
            name: '',
            screenSize: const Size(0, 0),
          ),
          workflows: workflows ?? const [],
          config: const ProjectConfigModel(prjId: '0'),
        ),
        child: res.data!.toWidget(
          context: context,
          state: WidgetState(node: res.data!, loop: 0),
        ),
      ),
      error: null,
    );
  }
}
