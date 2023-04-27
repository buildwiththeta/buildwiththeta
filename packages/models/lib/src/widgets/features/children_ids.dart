// Project imports:
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:theta_models/theta_models.dart';

/// [FChildrenIds] is a set of functions to save children' ids

@immutable
class FChildrenIds extends Equatable {
  /// Constructor
  const FChildrenIds({required this.ids});

  /// The value in List<String> of [FChildrenIds]
  final List<NodeID> ids;

  @override
  List<Object?> get props => [ids];

  /// Add new element in the beginning of the list [ids] (position 0)
  void addAt0(final NodeID newNid) {
    return ids.insert(0, newNid);
  }

  /// Add new element [newNid]
  void add(final NodeID newNid) {
    ids.add(newNid);
  }

  /// Replace a [targetNid] with [newNid]
  void replace(final NodeID newNid, final NodeID targetNid) {
    final index = ids.indexOf(targetNid);
    if (index != -1) {
      ids.insert(index + 1, newNid);
    }
  }

  /// Remove [nid] from [ids] list
  void remove(final NodeID? nid) {
    ids.remove(nid);
  }

  /// Instantiate [FChildrenIds] from Json
  static FChildrenIds fromJson(final List<dynamic>? json) {
    if (json == null) return const FChildrenIds(ids: []);
    try {
      return FChildrenIds(
        ids: json.cast<String>(),
      );
    } catch (e) {
      return const FChildrenIds(ids: []);
    }
  }

  /// Convert [FChildrenIds] to Json
  /// Returns a List<String> with all ids
  List<String> toJson() {
    return ids.toSet().toList();
  }

  /// Clone [FChildrenIds] (deep copy)
  FChildrenIds clone() => FChildrenIds(ids: ids);

  /// Clone [FChildrenIds] (deep copy) with optional [ids] attribute
  FChildrenIds copyWith({final List<NodeID>? ids}) =>
      FChildrenIds(ids: ids ?? this.ids);
}
