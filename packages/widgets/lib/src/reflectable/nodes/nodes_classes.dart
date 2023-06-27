// ignore_for_file: unused_element, unused_import, unnecessary_import

import 'dart:convert';
import 'dart:ui';

import 'package:light_logger/light_logger.dart';
import 'package:theta_models/theta_models.dart';
import 'package:theta_open_widgets/src/reflectable/index.dart';

import 'node_annotation_model.dart';
import 'nodes_parse.dart';

part 'nodes_classes.g.dart';

/// Why this line?
/// It is used to generate the file nodes_classes.g.dart
/// Without this line, reflectable will not detect this file
/// Uncomment this line when you want to generate the file nodes_classes.g.dart
//part 'nodes_classes.nodebuilder.g.dart';

@NodeInfo(
  type: NType.align,
  optionalDisplayName: 'Align',
)
class _Align {}

@NodeInfo(
  type: NType.button,
  optionalDisplayName: 'Button',
)
class _Button {}

@NodeInfo(
  type: NType.column,
  optionalDisplayName: 'Column',
)
class _Column {}

@NodeInfo(
  type: NType.component,
  optionalDisplayName: 'Component',
)
class _Component {}

@NodeInfo(
  type: NType.row,
  optionalDisplayName: 'Row',
)
class _Row {}

@NodeInfo(
  type: NType.container,
  optionalDisplayName: 'Container',
)
class _Container {}

@NodeInfo(
  type: NType.image,
  optionalDisplayName: 'Image',
)
class _Image {}

@NodeInfo(
  type: NType.icon,
  optionalDisplayName: 'Icon',
)
class _Icon {}

@NodeInfo(
  type: NType.listView,
  optionalDisplayName: 'List View',
)
class _ListView {}

@NodeInfo(
  type: NType.lottie,
  optionalDisplayName: 'Lottie',
)
class _Lottie {}

@NodeInfo(
  type: NType.scaffold,
  optionalDisplayName: 'Scaffold',
)
class _Scaffold {}

@NodeInfo(
  type: NType.stack,
  optionalDisplayName: 'Stack',
)
class _Stack {}

@NodeInfo(
  type: NType.text,
  optionalDisplayName: 'Text',
)
class _Text {}

@NodeInfo(
  type: NType.textField,
  optionalDisplayName: 'TextField',
)
class _TextField {}

@NodeInfo(
  type: NType.video,
  optionalDisplayName: 'Video',
)
class _Video {}
