import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
import 'package:theta_rendering/theta_rendering.dart';

class GetPageResponseEntity {
  GetPageResponseEntity({
    required this.pageID,
    required this.nodes,
    required this.treeNodes,
    this.conversionEvents = const [],
    this.abTestID,
  });

  final String pageID;
  final List<CNode> nodes;
  final CNode treeNodes;
  final List<ConversionEvent> conversionEvents;
  final ID? abTestID;

  static const NodesParse _nodesParse = NodesParse();
  static const NodeRendering _nodeRendering = NodeRendering();

  static GetPageResponseEntity fromJson(Map<String, dynamic> json) {
    final nodes = (json['nodes'] as List<dynamic>)
        .map((e) => _nodesParse.fromJson(e['type'], e))
        .whereType<CNode>()
        .toList();

    return GetPageResponseEntity(
      pageID: json['page_id'],
      nodes: nodes,
      treeNodes: _nodeRendering
          .renderTree(_nodeRendering.renderComponents(nodes, json['page_id'])),
      conversionEvents:
          ConversionEvent.fromJsonList(json['conversion_events'] ?? []),
      abTestID: json['ab_test'],
    );
  }

  Map<String, dynamic> toJson() => {
        'page_id': pageID,
        'nodes': _nodeRendering
            .renderFlatList(treeNodes)
            .map((e) => e.toJsonWithStabilIdAndPageIdAndId())
            .toList(),
        'conversion_events': conversionEvents.map((e) => e.toJson()).toList(),
        'ab_test': abTestID,
      };
}
