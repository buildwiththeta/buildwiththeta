// Flutter imports:

// Package imports:
import 'package:equatable/equatable.dart';
// Flutter imports:
import 'package:flutter/material.dart';

/// Class to use authors data in Teta
class AuthorObject extends Equatable {
  /// Returns a object to save and use authors' data
  const AuthorObject({
    this.id,
    this.isOnline,
    this.focusNode,
    this.hoverNode,
    this.image,
    this.color,
    this.firstName,
    this.lastName,
    this.cursor = const [],
    this.page,
  });

  /// The author / user id.
  final int? id;

  /// Indicates if author is online.
  final bool? isOnline;

  /// The eventualy focused node.
  final int? focusNode;

  /// The eventualy hovered node.
  final int? hoverNode;

  // ! Actually this is unused. Maybe set it deprecated?
  /// The image of user.
  final String? image;

  /// The color of user (generated dynamically and unique for each author)
  final Color? color;

  /// The name of author (first name + last name)
  final String? firstName;

  /// The last name of author
  final String? lastName;

  /// The id of page where the author is working
  final int? page;

  /// Coords of the author's cursor
  final List<double>? cursor;

  /// Returns a AuthorObject from Json
  // ignore: prefer_constructors_over_static_methods
  static AuthorObject fromJson(
    final Map<String, dynamic> json,
    final Color color,
  ) {
    final cursorCoords = <double>[];
    if (json['cursor'] != null) {
      (json['cursor'] as List<double>).forEach(cursorCoords.add);
    }

    return AuthorObject(
      id: json['id'] as int,
      isOnline: (json['isOnline'] ?? false) as bool,
      focusNode: json['focusNode'] as int?,
      hoverNode: json['hoverNode'] as int?,
      image: json['image'] as String?,
      color: color,
      firstName: json['firtName'] as String?,
      lastName: json['lastName'] as String?,
      page: json['page'] as int?,
      cursor: cursorCoords,
    );
  }

  @override
  List<Object?> get props => [
        id,
        isOnline,
        focusNode,
        hoverNode,
        image,
        color,
        firstName,
        lastName,
        cursor,
        page,
      ];

  /// Returns a copy of author without focusNode
  AuthorObject removeFocusNode() => AuthorObject(
        id: id,
        isOnline: isOnline,
        hoverNode: hoverNode,
        image: image,
        color: color,
        firstName: firstName,
        lastName: lastName,
        page: page,
        cursor: cursor,
      );

  AuthorObject copyWith({
    final int? id,
    final bool? isOnline,
    final int? focusNode,
    final int? hoverNode,
    final String? image,
    final Color? color,
    final String? firstName,
    final String? lastName,
    final List<double>? cursor,
    final int? page,
  }) =>
      AuthorObject(
        id: id ?? this.id,
        isOnline: isOnline ?? this.isOnline,
        focusNode: focusNode ?? this.focusNode,
        hoverNode: hoverNode ?? this.hoverNode,
        image: image ?? this.image,
        color: color ?? this.color,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        cursor: cursor ?? this.cursor,
        page: page ?? this.page,
      );
}
