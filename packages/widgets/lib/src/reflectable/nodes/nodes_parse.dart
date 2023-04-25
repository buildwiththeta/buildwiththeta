// ignore_for_file: unused_import

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:light_logger/light_logger.dart';
import 'package:reflectable/reflectable.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';

import 'nodes_classes.dart';

class NodeDeclaration extends Reflectable {
  const NodeDeclaration()
      : super.fromList(const [
          typeCapability,
          metadataCapability,
          newInstanceCapability,
          staticInvokeCapability,
        ]);
}

const nodeDeclaration = NodeDeclaration();

class NodeDeclarationReflector extends Reflectable {
  const NodeDeclarationReflector()
      : super(
          typeCapability,
          metadataCapability,
          newInstanceCapability,
          staticInvokeCapability,
        );
}

const nodeDeclarationReflector = NodeDeclarationReflector();

@NodeDeclarationReflector()
class NodesParse {
  const NodesParse();

  List<String> get supportedClasses =>
      nodeDeclaration.annotatedClasses.map((e) => '${e.metadata}').toList();

  /// fromJson for each class using Reflectable
  CNode? fromJson(final String widgetType, final Map<String, dynamic> json) {
    try {
      /// Get all classes with this widget type
      final classes = nodeDeclaration.annotatedClasses
          .where((element) => element.metadata
              .whereType<NodeKey>()
              .any((e) => e.key == widgetType))
          .toList();

      /// Get the class with the same name of the widget type
      final targetClass = classes.firstOrNull;

      /// There is no class with this widget type
      if (targetClass == null) {
        return null;
      }

      /// Invoke the fromJson method of the class
      final classFromJson = targetClass.invoke('fromJson', [widgetType, json]);
      return classFromJson as CNode?;
    } catch (e) {
      debugPrint('Error in nodesParse, widget type: $widgetType, error: $e');
      return null;
    }
  }
}
