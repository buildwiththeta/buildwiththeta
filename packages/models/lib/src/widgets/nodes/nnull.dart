import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

class NNull extends CNode {
  /// construct
  NNull({
    required NodeID nid,
    required IntrinsicState intrinsicState,
  }) : super(
          type: NType.nil,
          id: nid,
          childrenIds: const FChildrenIds(ids: []),
          intrinsicState: intrinsicState,
          defaultAttributes: const {},
          attributes: const {},
          rectProperties: const {},
          adapter: const NNullWidgetAdapter(),
        );

  static NNull fromJson(
    final Map<String, dynamic> doc,
  ) =>
      NNull(
        nid: '',
        intrinsicState: IntrinsicState.basic,
      );

  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
  }) {
    throw UnimplementedError('toWidget not implemented in NNull class');
  }

  @override
  String toString() => 'NNull { id: $id }';

  @override
  CNode copyWith({
    NodeID? id,
    NodeID? parent,
    CNode? child,
    List<CNode>? children,
    String? name,
    String? description,
    FChildrenIds? childrenIds,
    int? index,
    Map<String, dynamic>? attributes,
    Map<String, dynamic>? rectProperties,
  }) {
    throw UnimplementedError('copyWith not implemented in NNull class');
  }
}

class NNullWidgetAdapter extends WidgetAdapter {
  const NNullWidgetAdapter();

  @override
  Widget toWidget({
    required final BuildContext context,
    required final WidgetState state,
    final CNode? child,
    final List<CNode>? children,
  }) {
    return const SizedBox.shrink();
  }
}
