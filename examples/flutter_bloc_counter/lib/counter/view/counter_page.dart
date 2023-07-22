import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_counter/counter/counter.dart';
import 'package:theta/theta.dart';

/// {@template counter_page}
/// A [StatelessWidget] which is responsible for providing a
/// [CounterCubit] instance to the [CounterView].
/// {@endtemplate}
class CounterPage extends StatelessWidget {
  /// {@macro counter_page}
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use ThetaProvider to provide the Theta project styles to the app
    return ThetaProvider(
      theme: ThemeMode.light,
      child: BlocProvider(
        create: (_) => CounterCubit(),
        child: const CounterView(),
      ),
    );
  }
}
