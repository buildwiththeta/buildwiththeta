import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';

/// Component for generic 'delete' alert
class DeleteAlert extends StatefulWidget {
  /// Use this to generate a generic 'delete' alert
  /// with a custom function if user choose to continue
  const DeleteAlert({
    final Key? key,
    required this.onContinue,
  }) : super(key: key);

  ///function called after clicking on 'Delete' button
  final Function() onContinue;

  @override
  State<DeleteAlert> createState() => _DeleteAlertState();
}

class _DeleteAlertState extends State<DeleteAlert> {
  bool isLoading = false;
  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context).extension<ThetaTheme>()!;
    return AlertDialog(
      backgroundColor: theme.bgSecondary,
      title: const Column(
        children: [
          Gap(16),
          Icon(
            CupertinoIcons.exclamationmark_triangle,
            size: 24,
            color: Colors.red,
          ),
          Gap(4),
          TAlertTitle(
            'Are you sure?',
            isCentered: true,
          ),
          Gap(4),
          TParagraph(
            'This action cannot be undone.',
            isCentered: true,
          ),
        ],
      ),
      content: const SizedBox(
        width: 200,
      ),
      actions: <Widget>[
        if (!isLoading)
          ThetaDesignButton(
            'Cancel',
            onTap: () => Navigator.of(context, rootNavigator: true).pop(null),
            isPrimary: false,
          ),
        if (isLoading)
          const ThetaCircularProgressIndicator()
        else
          ThetaDesignButton(
            primaryColor: theme.redError.withOpacity(0.7),
            'Delete',
            onTap: () async {
              setState(() {
                isLoading = true;
              });
              await widget.onContinue();
              Navigator.of(context, rootNavigator: true).pop(null);
            },
          )
      ],
    );
  }
}
