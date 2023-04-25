import 'package:flutter/material.dart';
import 'package:theta_open_widgets/src/core/add_dataset.dart';
import 'package:theta_open_widgets/src/elements/builders/child_builder.dart';
import 'package:theta_models/theta_models.dart';

// ignore_for_file: public_member_api_docs

class OpenWDeviceInfo extends StatefulWidget {
  /// Returns a DeviceInfo Repository,
  /// which provides info for the actual device.
  const OpenWDeviceInfo(
    final Key? key, {
    required this.state,
    this.child,
  }) : super(key: key);

  final WidgetState state;
  final CNode? child;

  @override
  _WDeviceInfoState createState() => _WDeviceInfoState();
}

class _WDeviceInfoState extends State<OpenWDeviceInfo> {
  DatasetObject _map = const DatasetObject(
    name: 'Device Info',
    map: [
      <String, dynamic>{
        'Android Model': 'It will works on exported app only.',
        'Android Device': 'It will works on exported app only.',
        'Android Brand': 'It will works on exported app only.',
        'Android Display': 'It will works on exported app only.',
        'Android Version': 'It will works on exported app only.',
        'iOS Model': 'It will works on exported app only.',
        'iOS Name': 'It will works on exported app only.',
        'iOS System Name': 'It will works on exported app only.',
        'iOS System Version': 'It will works on exported app only.',
        'Browser Name': 'Chrome',
        'Browser Platform': '',
        'Browser Language': 'EN',
      }
    ],
  );

  @override
  void initState() {
    detect();
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    return ChildBuilder(
      context: context,
      state: widget.state.copyWith(
        node: widget.child,
      ),
      child: widget.child,
    );
  }

  Future<void> detect() async {
    //final deviceInfo = DeviceInfoPlugin();
    // final webBrowserInfo = await deviceInfo.webBrowserInfo;

    if (mounted) {
      setState(() {
        _map = _map.copyWith(
          name: 'Device Info',
          map: [
            <String, dynamic>{
              'Android Model': 'It will works on exported app only.',
              'Android Device': 'It will works on exported app only.',
              'Android Brand': 'It will works on exported app only.',
              'Android Display': 'It will works on exported app only.',
              'Android Version': 'It will works on exported app only.',
              'iOS Model': 'It will works on exported app only.',
              'iOS Name': 'It will works on exported app only.',
              'iOS System Name': 'It will works on exported app only.',
              'iOS System Version': 'It will works on exported app only.',
              'Browser Name': 'It will works on exported app only.',
              'Browser Platform': 'It will works on exported app only.',
              'Browser Language': 'It will works on exported app only.',
            }
          ],
        );
      });
    }
    addDataset(context, _map);
  }
}
