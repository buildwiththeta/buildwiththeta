import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_open_widgets/theta_open_widgets.dart';
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
                state: TreeGlobalState.state,
                context: context,
                isWidth: true,
              ) ??
              0,
          crossAxisExtent: crossAxisExtent.get(
            state: TreeGlobalState.state,
            context: context,
            isWidth: true,
          ),
        );
}
