import 'package:flutter/material.dart';
import 'package:flutter_stacked_counter/counter/counter.dart';
import 'package:stacked/stacked.dart';
import 'package:theta/theta.dart';

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterViewmodel] state and notifies it in response to user input.
/// {@endtemplate}
class CounterView extends StatelessWidget {
  /// {@macro counter_view}
  const CounterView({super.key});

  static final _nodeOverride = Override('Count Text');

  @override
  Widget build(BuildContext context) =>
      ViewModelBuilder<CounterViewmodel>.nonReactive(
        viewModelBuilder: () => CounterViewmodel(),
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(title: const Text('Counter')),
          body: SelectorViewModelBuilder<CounterViewmodel, int>(
            selector: (model) => model.state,
            builder: (context, state, child) => UIBox(
              'Counter View',
              key: const Key('counterView'),
              placeholder: const Center(child: CircularProgressIndicator()),
              overrides: [_nodeOverride..setText(state.toString())],
              workflows: [
                Workflow('Increment Button', Trigger.onTap, model.increment),
                Workflow('Decrement Button', Trigger.onTap, model.decrement),
              ],
            ),
          ),
        ),
      );
}
