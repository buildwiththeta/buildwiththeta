import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

/// Class to edit a CNode instance
/// Here an example code:
/// ```dart
/// void main() {
///  # Create a CNode instance
///  CNode myNode = // ... instantiate a CNode subclass instance here

///  # Create a CNodeEditor instance
///  CNodeEditor editor = CNodeEditor();

///  # Update a single attribute
///  myNode = editor.updateAttribute(myNode, 'attributeName', 'newValue');

///  # Update multiple attributes
///  Map<String, dynamic> newAttributes = {
///    'attributeName1': 'newValue1',
///    'attributeName2': 'newValue2',
///  };
///  myNode = editor.updateAttributes(myNode, newAttributes);

///  # Remove an attribute
///  myNode = editor.removeAttribute(myNode, 'attributeName');
/// }
///```

class CNodeEditor {
  final ValueNotifier<CNode> nodeNotifier;

  CNodeEditor(CNode node) : nodeNotifier = ValueNotifier<CNode>(node);

  // Update a single attribute of a CNode
  void updateAttribute(String attributeName, dynamic newValue) {
    final updatedAttributes = {
      ...nodeNotifier.value.getAttributes,
      attributeName: newValue
    };
    final updatedNode =
        nodeNotifier.value.copyWith(attributes: updatedAttributes);
    nodeNotifier.value = updatedNode;
  }

  // Update multiple attributes of a CNode
  void updateAttributes(Map<String, dynamic> newAttributes) {
    final updatedAttributes = {
      ...nodeNotifier.value.getAttributes,
      ...newAttributes
    };
    final updatedNode =
        nodeNotifier.value.copyWith(attributes: updatedAttributes);
    nodeNotifier.value = updatedNode;
  }

  // Remove an attribute from a CNode
  void removeAttribute(String attributeName) {
    final updatedAttributes = {...nodeNotifier.value.getAttributes}
      ..remove(attributeName);
    final updatedNode =
        nodeNotifier.value.copyWith(attributes: updatedAttributes);
    nodeNotifier.value = updatedNode;
  }
}
