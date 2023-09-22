// ignore_for_file: unused_import

import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:theta_open_widgets/src/reflectable/nodes/node_annotation_model.dart';

class NodeGenerator extends Generator {
  @override
  FutureOr<String> generate(LibraryReader reader, dynamic buildStep) async {
    await Future.delayed(const Duration(seconds: 1));

    const code = '''
enum Ciao {
  ciao,
}
    ''';

    return code;
  }
}
