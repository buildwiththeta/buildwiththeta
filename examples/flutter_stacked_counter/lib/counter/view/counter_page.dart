import 'package:flutter/material.dart';
import 'package:flutter_stacked_counter/counter/counter.dart';
import 'package:theta/theta.dart';

class CounterPage extends StatelessWidget {
  /// {@macro counter_page}
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use ThetaProvider to provide the Theta project styles to the app
    return const ThetaProvider(
      theme: ThemeMode.light,
      child: CounterView(),
    );
  }
}
