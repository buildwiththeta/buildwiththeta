import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:theta_models/theta_models.dart';

class OpenWGap extends Gap {
  /// Returns a [WGap] widget in Teta
  OpenWGap({
    super.key,
    required final BuildContext context,
    required final FSize mainAxisExtent,
    required final FSize crossAxisExtent,
  }) : super(
          mainAxisExtent.get(
                state: context.watch<TreeState>(),
                context: context,
                isWidth: true,
              ) ??
              0,
          crossAxisExtent: crossAxisExtent.get(
            state: context.watch<TreeState>(),
            context: context,
            isWidth: true,
          ),
        );
}
