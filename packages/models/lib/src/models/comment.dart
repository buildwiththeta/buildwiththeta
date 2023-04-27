// Package imports:
// ignore_for_file: public_member_api_docs

// Package imports:
import 'package:equatable/equatable.dart';
import '../widgets/nodes/key_constants.dart';
import 'index.dart';

class CommentObject extends Equatable {
  /// Object to show a single comment.
  const CommentObject({
    this.id = '',
    this.isDone,
    this.pageId,
    this.userId,
    this.firstName,
    this.lastName,
    this.text,
    this.date,
    this.cursor = const [],
  });

  final ID id;
  final bool? isDone;
  final PageID? pageId;
  final UserID? userId;
  final String? firstName;
  final String? lastName;
  final String? text;
  final String? date;
  final List<double>? cursor;

  // ignore: prefer_constructors_over_static_methods
  static CommentObject fromJson(
    final Map<String, dynamic> json,
  ) {
    final cursorCoords = <double>[];
    if (json['cursor'] != null) {
      (json['cursor'] as List<double>).forEach(cursorCoords.add);
    }

    return CommentObject(
      id: json[DBKeys.id] as String,
      isDone: json['done'] as bool? ?? false,
      pageId: json['pg'] as String?,
      userId: json['uid'] as String?,
      firstName: json['fN'] as String?,
      lastName: json['lN'] as String?,
      date: json['date'] as String?,
      text: json['txt'] as String?,
      cursor: cursorCoords,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'done': isDone ?? false,
      'pg': pageId,
      'uid': userId,
      'fN': firstName,
      'lN': lastName,
      'date': date,
      'txt': text,
      'cursor': (cursor != null) ? cursor!.toList() : <double>[],
    };
  }

  @override
  List<Object?> get props => [
        id,
        isDone,
        userId,
        firstName,
        lastName,
        date,
        text,
        cursor,
      ];
}
