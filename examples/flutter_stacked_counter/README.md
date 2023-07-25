# Flutter counter app with Theta and Bloc.

This project takes up the [official bloc library project](https://github.com/felangel/bloc/tree/master/examples/flutter_counter) with the addition of [Theta](https://github.com/buildwiththeta/buildwiththeta).

With Theta, the UI of the application can be created visually, and it can be updated instantly.

This app is a basic example of how to create an app using Theta and a widely used state management library such as bloc. It will show you how to link the clicking of remote elements with a state change and changes in the text of the remote component.

▶️ See the video: https://youtu.be/3gp1N_xvoII

Main code:

```dart
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
        builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(title: const Text('Counter')),
            body: SelectorViewModelBuilder<CounterViewmodel, int>(
              selector: (model) => model.state,
              builder: (context, state, child) => UIBox(
                'Counter View',
                key: const Key('counterView'),
                placeholder: Center(child: CircularProgressIndicator()),
                overrides: [
                  _nodeOverride..setText(state.toString()),
                ],
                workflows: [
                  Workflow('Increment Button', Trigger.onTap, model.increment),
                  Workflow('Decrement Button', Trigger.onTap, model.decrement),
                ],
              ),
            ),
          );
        },
      );
}

```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
