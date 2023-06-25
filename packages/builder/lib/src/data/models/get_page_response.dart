import 'package:collection/collection.dart';
import 'package:theta/src/dependency_injection/di.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_rendering/theta_rendering.dart';

class GetPageResponseEntity {
  GetPageResponseEntity({
    required this.pageID,
    required this.treeNodes,
  });

  final String pageID;
  final CNode treeNodes;

  static GetPageResponseEntity fromJson(Map<String, dynamic> json) {
    final nodes = (json['nodes'] as List<dynamic>)
        .map((e) => getIt<NodesParse>().fromJson(e['type'], e))
        .whereNotNull()
        .toList();

    return GetPageResponseEntity(
      pageID: json['page_id'],
      treeNodes: getIt<NodeRendering>().renderTree(
          getIt<NodeRendering>().renderComponents(nodes, json['page_id'])),
    );
  }

  Map<String, dynamic> toJson() => {
        'page_id': pageID,
        'nodes': getIt<NodeRendering>()
            .renderFlatList(treeNodes)
            .map((e) => {'id': e.id, ...e.toJson()})
            .toList(),
      };
}
