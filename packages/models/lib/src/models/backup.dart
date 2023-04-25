// Flutter imports:
// Package imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Salva il vecchio valore di un attributo per poterlo ripristinare
/// se l'utente vuole ritornare indietro di una o più azioni

class Backup extends Equatable {
  /// Constructor
  const Backup({
    required this.id,
    required this.prj,
    required this.page,
    required this.nodeId,
    this.component,
    this.attribute,
    required this.context,
  });

  final String id;
  final int prj;
  final int page;
  final int nodeId;
  final String? component;
  final Map<String, dynamic>? attribute;
  final BuildContext context;

  @override
  List<Object> get props => [];

  @override
  String toString() =>
      'Backup { id: $id, node: $nodeId, attribute: $attribute }';

  bool isDifferent(final Map<String, dynamic> nodeMap) {
    var flag = false;
    if (mapEquals<String, dynamic>(attribute, nodeMap)) flag = true;
    return flag;
  }
}
