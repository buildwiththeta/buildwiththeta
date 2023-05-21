import 'package:collection/collection.dart';
import 'package:light_logger/light_logger.dart';
import 'package:theta/src/dependency_injection/di.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_rendering/theta_rendering.dart';

class GetPageResponseEntity {
  GetPageResponseEntity({
    required this.pageID,
    required this.treeNodes,
    required this.colors,
    required this.texts,
  });

  final String pageID;
  final CNode treeNodes;
  final ColorStyles colors;
  final TextStyles texts;

  static GetPageResponseEntity fromJson(Map<String, dynamic> json) {
    final nodes = (json['nodes'] as List<dynamic>)
        .map((e) {
          Logger.printWarning('e: ${e['type']}');
          return getIt<NodesParse>().fromJson(e['type'], e);
        })
        .whereNotNull()
        .toList();

    return GetPageResponseEntity(
      pageID: json['page_id'],
      treeNodes: getIt<NodeRendering>().renderTree(nodes),
      colors: getIt<ColorStylesMapper>().listFromJson(json['colors']),
      texts: getIt<TextStylesMapper>().listFromJson(json['texts']),
    );
  }

  Map<String, dynamic> toJson() => {
        'page_id': pageID,
        'nodes': getIt<NodeRendering>().renderFlatList(treeNodes).toList(),
        'colors':
            colors.map((e) => getIt<ColorStylesMapper>().toJson(e)).toList(),
        'texts': texts.map((e) => getIt<TextStylesMapper>().toJson(e)).toList(),
      };
}
