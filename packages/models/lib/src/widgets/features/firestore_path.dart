// Flutter imports:
// ignore_for_file: public_member_api_docs

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:theta_models/src/widgets/dynamic_attributes_parse.dart';
// Package imports:
import 'package:theta_models/theta_models.dart';
// Project imports:

@immutable
@dynamicAttributeKey
@AttributeKey(DBKeys.firestorePath)
class FFirestorePath {
  /// Constructor
  const FFirestorePath({
    this.values = const [
      FTextTypeInput(),
    ],
    this.isDoc = false,
  });

  /// Values of [FFirestorePath]
  /// Contains the path for Firestore DB
  final List<FTextTypeInput> values;

  /// Indicates if the path in linking to a Document or a Collection
  final bool isDoc;

  /// Instantiate [FFirestorePath] from Json
  static FFirestorePath fromJson(final List<dynamic>? json) {
    return FFirestorePath(
      values: json != null
          ? json
              .cast<Map<String, dynamic>>()
              .map<FTextTypeInput>(FTextTypeInput.fromJson)
              .toList()
          : [
              const FTextTypeInput(),
            ],
    );
  }

  /// Convert [FFirestorePath] to Json
  List<dynamic> toJson() {
    return values != null
        ? values.map((final e) => e.toJson()).toList()
        : <Map<String, dynamic>>[const FTextTypeInput().toJson()];
  }

  /// Transforms [values] to a single Firestore path string
  List<String> getFinalValues({
    required final TreeState state,
    required final BuildContext context,
    required final int loop,
  }) {
    return values
        .map(
          (final value) => value.get(
            loop: loop,
            state: state,
            context: context,
          ),
        )
        .toList();
  }

  /// Calcs the full path
  String getPath({
    required final TreeState state,
    required final BuildContext context,
    required final int loop,
  }) {
    final finalPath = StringBuffer()..write('');
    final values = getFinalValues(
      state: state,
      context: context,
      loop: loop,
    );
    for (final e in values) {
      if (values.indexOf(e) != values.length - 1) {
        finalPath.write('$e/');
      } else {
        finalPath.write(e);
      }
    }
    return finalPath.toString();
  }

  /// Returns FirebaseFirestore complete path
  ///
  /// e.g.
  /// ```eg
  /// FirebaseFirestore.instance.doc(x).get()
  /// ```
  /// or
  /// ```dart
  /// FirebaseFirestore.instance.collection(x).get()
  /// ```
  String toCode(
    final BuildContext context,
    final int? loop, {
    required final bool isStream,
  }) {
    final fPath = StringBuffer()..write('');
    final temp = values != null
        ? values
            .map(
              (final value) => value.toCode(
                null,
                resultType: ResultTypeEnum.string,
              ),
            )
            .toList()
        : <String>[];
    for (final e in temp) {
      if (temp.indexOf(e) != temp.length - 1) {
        fPath.write('$e/');
      } else {
        fPath.write(e);
      }
    }
    const prefix = 'FirebaseFirestore.instance';
    final end = isStream ? '.snapshots()' : '.get()';
    final func = (temp.length.isEven) ? 'doc' : 'collection';
    return "$prefix.$func('${fPath.toString()}')$end";
  }
}
