import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:theta_design_system/theta_design_system.dart';

class ApiPlaygroundConnectWidget extends StatefulWidget {
  const ApiPlaygroundConnectWidget({
    super.key,
    required this.currentValue,
    required this.currentAnonKey,
    required this.onSettingsChanged,
  });

  final bool currentValue;
  final String? currentAnonKey;
  final Function(bool, String?) onSettingsChanged;

  @override
  State<ApiPlaygroundConnectWidget> createState() =>
      _ApiPlaygroundConnectWidgetState();
}

class _ApiPlaygroundConnectWidgetState
    extends State<ApiPlaygroundConnectWidget> {
  final controller = TextEditingController();
  late final String originalValue;
  late bool isActive;

  @override
  void initState() {
    super.initState();
    isActive = widget.currentValue;
    controller.text = widget.currentAnonKey ?? '';
    originalValue = controller.text;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EI.mdA,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const THeadline2('Connect your Anon Key'),
          const Gap(Grid.medium),
          ThetaTextField(
            placeholder: 'Connect to API Playground',
            controller: controller,
            onChanged: (t) => setState(() {}),
          ),
          const Gap(Grid.medium),
          IgnorePointer(
            ignoring: controller.text == originalValue,
            child: Opacity(
              opacity: controller.text == originalValue ? 0.5 : 1,
              child: CupertinoSwitch(
                value: isActive,
                onChanged: (flag) {
                  setState(() => isActive = flag);
                  widget.onSettingsChanged(flag, controller.text);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
