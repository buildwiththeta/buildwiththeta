// Flutter imports:
// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theta_models/theta_models.dart';

@dynamicAttributeKey
@AttributeKey(DBKeys.cursorType)
class FCursor extends Equatable {
  const FCursor({
    required this.cursor,
  });

  final MouseCursor cursor;

  @override
  List<Object> get props => [cursor];

  static MouseCursor fromJson(final String j) {
    switch (j) {
      case 'c':
        return SystemMouseCursors.click;
      case 'a':
        return SystemMouseCursors.alias;
      case 'aS':
        return SystemMouseCursors.allScroll;
      case 'b':
        return SystemMouseCursors.basic;
      case 'cM':
        return SystemMouseCursors.contextMenu;
      case 'cp':
        return SystemMouseCursors.copy;
      case 'd':
        return SystemMouseCursors.disappearing;
      case 'f':
        return SystemMouseCursors.forbidden;
      case 'g':
        return SystemMouseCursors.grab;
      case 'gb':
        return SystemMouseCursors.grabbing;
      case 'h':
        return SystemMouseCursors.help;
      case 'm':
        return SystemMouseCursors.move;
      case 'nD':
        return SystemMouseCursors.noDrop;
      case 'n':
        return SystemMouseCursors.none;
      case 'p':
        return SystemMouseCursors.precise;
      case 't':
        return SystemMouseCursors.text;
      case 'vT':
        return SystemMouseCursors.verticalText;
      case 'w':
        return SystemMouseCursors.wait;
      case 'zI':
        return SystemMouseCursors.zoomIn;
      case 'zO':
        return SystemMouseCursors.zoomOut;
      default:
        return MouseCursor.defer;
    }
  }

  String toJson() {
    if (cursor == SystemMouseCursors.click) {
      return 'c';
    } else if (cursor == SystemMouseCursors.alias) {
      return 'a';
    } else if (cursor == SystemMouseCursors.allScroll) {
      return 'aS';
    } else if (cursor == SystemMouseCursors.basic) {
      return 'b';
    } else if (cursor == SystemMouseCursors.contextMenu) {
      return 'cM';
    } else if (cursor == SystemMouseCursors.copy) {
      return 'cp';
    } else if (cursor == SystemMouseCursors.disappearing) {
      return 'd';
    } else if (cursor == SystemMouseCursors.forbidden) {
      return 'f';
    } else if (cursor == SystemMouseCursors.grab) {
      return 'g';
    } else if (cursor == SystemMouseCursors.grabbing) {
      return 'gb';
    } else if (cursor == SystemMouseCursors.help) {
      return 'h';
    } else if (cursor == SystemMouseCursors.move) {
      return 'm';
    } else if (cursor == SystemMouseCursors.noDrop) {
      return 'nD';
    } else if (cursor == SystemMouseCursors.none) {
      return 'n';
    } else if (cursor == SystemMouseCursors.precise) {
      return 'p';
    } else if (cursor == SystemMouseCursors.text) {
      return 't';
    } else if (cursor == SystemMouseCursors.verticalText) {
      return 'vT';
    } else if (cursor == SystemMouseCursors.wait) {
      return 'w';
    } else if (cursor == SystemMouseCursors.zoomIn) {
      return 'zI';
    } else if (cursor == SystemMouseCursors.zoomOut) {
      return 'zO';
    } else if (cursor == MouseCursor.defer) {
      return 'de';
    } else {
      return 'de';
    }
  }

  String convertValueToCode(final MouseCursor? cursor) {
    if (cursor == SystemMouseCursors.click) {
      return 'SystemMouseCursors.click';
    } else if (cursor == SystemMouseCursors.alias) {
      return 'SystemMouseCursors.alias';
    } else if (cursor == SystemMouseCursors.allScroll) {
      return 'SystemMouseCursors.allScroll';
    } else if (cursor == SystemMouseCursors.basic) {
      return 'SystemMouseCursors.basic';
    } else if (cursor == SystemMouseCursors.contextMenu) {
      return 'SystemMouseCursors.contextMenu';
    } else if (cursor == SystemMouseCursors.copy) {
      return 'SystemMouseCursors.copy';
    } else if (cursor == SystemMouseCursors.disappearing) {
      return 'SystemMouseCursors.disappearing';
    } else if (cursor == SystemMouseCursors.forbidden) {
      return 'SystemMouseCursors.forbidden';
    } else if (cursor == SystemMouseCursors.grab) {
      return 'SystemMouseCursors.grab';
    } else if (cursor == SystemMouseCursors.grabbing) {
      return 'SystemMouseCursors.grabbing';
    } else if (cursor == SystemMouseCursors.help) {
      return 'SystemMouseCursors.help';
    } else if (cursor == SystemMouseCursors.move) {
      return 'SystemMouseCursors.move';
    } else if (cursor == SystemMouseCursors.noDrop) {
      return 'SystemMouseCursors.noDrop';
    } else if (cursor == SystemMouseCursors.none) {
      return 'SystemMouseCursors.none';
    } else if (cursor == SystemMouseCursors.precise) {
      return 'SystemMouseCursors.precise';
    } else if (cursor == SystemMouseCursors.text) {
      return 'SystemMouseCursors.text';
    } else if (cursor == SystemMouseCursors.verticalText) {
      return 'SystemMouseCursors.verticalText';
    } else if (cursor == SystemMouseCursors.wait) {
      return 'SystemMouseCursors.wait';
    } else if (cursor == SystemMouseCursors.zoomIn) {
      return 'SystemMouseCursors.zoomIn';
    } else if (cursor == SystemMouseCursors.zoomOut) {
      return 'SystemMouseCursors.zoomOut';
    } else if (cursor == MouseCursor.defer) {
      return 'MouseCursor.defer';
    } else {
      return 'MouseCursor.defer';
    }
  }

  String toCode() => convertValueToCode(cursor);
}
