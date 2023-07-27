import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_counter/counter/counter.dart';
import 'package:theta/theta.dart';

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterCubit] state and notifies it in response to user input.
/// {@endtemplate}
class CounterView extends StatelessWidget {
  /// {@macro counter_view}
  const CounterView({super.key});

  static final _nodeOverride = Override(
    'Count Text',
  );

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CounterCubit>().state;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: UIBox(
        'Counter View',
        key: const Key('counterView'),
        placeholder: Center(child: CircularProgressIndicator()),
        overrides: [
          _nodeOverride..setText(state.toString()),
        ],
        workflows: [
          Workflow('Increment Button', Trigger.onTap,
              () => context.read<CounterCubit>().increment()),
          Workflow('Decrement Button', Trigger.onTap,
              () => context.read<CounterCubit>().decrement()),
        ],
      ),
    );
  }
}
