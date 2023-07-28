import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide Override;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:theta/theta.dart';

part 'main.g.dart';

// A Counter example implemented with riverpod

Future<void> main() async {
  await Theta.initialize(
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWYiOiI1NTE1MTU3Ni1jZGFkLTQ2ZGUtYWI3Mi01OGEzNDY1ZjM2NGMiLCJhbm9uX2tleSI6IjE0MzRkZDU5LTAwOWYtNGQ2Zi05OWE5LTQ4N2Y3Yzk1ODZhMCIsImlhdCI6MTY4OTk2MzQzNCwiZXhwIjoxNzIxNTIxMDM0LCJpc3MiOiJodHRwczovL2J1aWxkd2l0aHRoZXRhLmNvbSJ9.q32FmW5YAqzIncjRw0KXBwDr3J12qFumt5DrbEeyTKk',
  );
  runApp(
    // Adding ProviderScope enables Riverpod for the entire project
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ThetaProvider(
      theme: ThemeMode.light,
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}

/// Annotating a class by `@riverpod` defines a new shared state for your application,
/// accessible using the generated [counterProvider].
/// This class is both responsible for initializing the state (through the [build] method)
/// and exposing ways to modify it (cf [increment]).
@riverpod
class Counter extends _$Counter {
  /// Classes annotated by `@riverpod` **must** define a [build] function.
  /// This function is expected to return the initial state of your shared state.
  /// It is totally acceptable for this function to return a [Future] or [Stream] if you need to.
  /// You can also freely define parameters on this method.
  @override
  int build() => 0;

  void increment() => state++;
  void decrement() => state--;
}

class Home extends ConsumerWidget {
  final _nodeOverride = Override(
    'Count Text',
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter example')),
      body: UIBox(
        'Counter View',
        key: const Key('counterView'),
        placeholder: Center(child: CircularProgressIndicator()),
        overrides: [
          _nodeOverride..setText('${ref.watch(counterProvider)}'),
        ],
        workflows: [
          Workflow('Increment Button', Trigger.onTap,
              () => ref.read(counterProvider.notifier).increment()),
          Workflow('Decrement Button', Trigger.onTap,
              () => ref.read(counterProvider.notifier).decrement()),
        ],
      ),
    );
  }
}
