import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theta_models/theta_models.dart';

class OpenWCupertinoPicker extends CupertinoPicker {
  /// Returns a [WCupertinoPicker] widget in Teta
  OpenWCupertinoPicker({
    super.key,
    required final BuildContext context,
    required final WidgetState state,
    required final List<CNode> children,
    required final FSize height,
    required final bool loopingFlag,
  }) : super(
          itemExtent: height.get(
                context: context,
                isWidth: false,
                state: context.watch<TreeState>(),
              ) ??
              44,
          onSelectedItemChanged: (final index) {},
          looping: loopingFlag,
          children: children
              .map(
                (final e) => e.toWidget(context: context, state: state),
              )
              .toList(),
        );
}
