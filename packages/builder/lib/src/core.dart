import 'package:device_frame/device_frame.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:light_logger/light_logger.dart';
import 'package:provider/provider.dart';
import 'package:theta/src/data/models/get_page_response.dart';
import 'package:theta/src/domain/usecases/get_component_usecase.dart';
import 'package:theta/theta.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

class Core {
  Core(this._getComponentUseCase);

  final GetComponentUseCase _getComponentUseCase;

  Future<Either<Exception, GetPageResponseEntity>> _fetchComponent(
          final String componentName) async =>
      _getComponentUseCase(
          GetComponentUseCaseParams(componentName: componentName));

  Future<Either<Exception, Widget>> build(
    final BuildContext context,
    final String componentName, {
    final List<Workflow>? workflows,
    final ThemeMode? theme = ThemeMode.light,
    final List<Var>? parameters,
    final List<Var>? states,
  }) async =>
      await _fetchComponent(componentName).fold(
        (l) => Left(l),
        (r) {
          Logger.printWarning(r.toString());
          return Right(ChangeNotifierProvider(
            create: (context) => TreeState(
              forPlay: false,
              params: [],
              states: [],
              pageId: r.pageID,
              isPage: false,
              colorStyles: r.colors,
              textStyles: r.texts,
              localization: FlutterLocalization.instance,
              theme: theme!,
              deviceInfo: DeviceInfo.genericPhone(
                platform: TargetPlatform.iOS,
                id: '',
                name: '',
                screenSize: MediaQuery.of(context).size,
              ),
              workflows: workflows ?? const [],
              config: const ProjectConfigModel(),
            ),
            child: TreeGlobalState(
              onNodeChanged: (_, __, ___) {},
              onNodeFocused: (_) {},
              onNodeHovered: (_) {},
              child: r.treeNodes.toWidget(
                context: context,
                state: WidgetState(node: r.treeNodes, loop: 0),
              ),
            ),
          ));
        },
      );
}
