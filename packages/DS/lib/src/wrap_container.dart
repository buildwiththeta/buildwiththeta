import 'package:flutter/material.dart';

class WrapperContainer extends StatelessWidget {
  const WrapperContainer({final Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(final BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < 600) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: child,
          );
        } else if (constrains.maxWidth < 1200) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: child,
          );
        } else {
          return Center(
            child: SizedBox(
              width: 1200,
              child: child,
            ),
          );
        }
      },
    );
  }
}
