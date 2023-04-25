import 'dart:convert';
import 'package:theta_models/theta_models.dart';
import 'package:light_logger/light_logger.dart';

class TetaAIRendering {
  var index = 0;
  List<ThetaAIRenderingNode> buildNodes(
      final PageID pageId, String jsonString) {
    List<ThetaAIRenderingNode> cNodes = parseJsonToCNodes(jsonString);
    Logger.printWarning(
        'Nodes built with TetaAIRendering ------------------------------');
    Logger.printWarning('$cNodes');
    return cNodes;
  }

  List<ThetaAIRenderingNode> parseJsonToCNodes(String jsonString) {
    index = 0;
    List<dynamic> jsonList = jsonDecode(jsonString);
    return flattenCNodes(index, jsonList).reversed.toList();
  }

  List<ThetaAIRenderingNode> flattenCNodes(
      int nodeIdCounter, List<dynamic> nodes) {
    List<ThetaAIRenderingNode> cNodes = [];
    for (var node in nodes) {
      index++;
      List<int> childrenIDs = [];

      if (node.containsKey('children')) {
        childrenIDs = processChildren(node['children'], cNodes);
      } else if (node.containsKey('child')) {
        childrenIDs = processChildren([node['child']], cNodes);
      }

      cNodes.add(ThetaAIRenderingNode(
        id: nodeIdCounter,
        type: node['type'],
        body: node['body'],
        childrenIDs: childrenIDs,
      ));
    }
    return cNodes;
  }

  List<int> processChildren(
      List<dynamic> children, List<ThetaAIRenderingNode> cNodes) {
    List<int> childrenIDs = [];
    for (var child in children) {
      index++;
      childrenIDs.add(index);
      cNodes.addAll(flattenCNodes(index, [child]));
    }
    return childrenIDs;
  }
}
