import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

class OpenWNumericStepButton extends StatefulWidget {
  const OpenWNumericStepButton(
    final Key? key, {
    required this.state,
  }) : super(key: key);

  final WidgetState state;

  @override
  createState() => _WNumericStepButtonState();
}

class _WNumericStepButtonState extends State<OpenWNumericStepButton> {
  int counter = 0;
  int maxValue = 0;

  @override
  Widget build(final BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: Icon(
            Icons.remove,
            color: Theme.of(context).colorScheme.secondary,
          ),
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 18),
          iconSize: 32,
          color: Theme.of(context).primaryColor,
          onPressed: () {},
        ),
        Text(
          '$counter',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.add,
            color: Theme.of(context).colorScheme.secondary,
          ),
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 18),
          iconSize: 32,
          color: Theme.of(context).primaryColor,
          onPressed: () {
            if (mounted) {
              setState(() {
                if (counter < maxValue) {
                  counter++;
                }
              });
            }
          },
        ),
      ],
    );
  }
}
