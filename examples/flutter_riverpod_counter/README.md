# Flutter counter app with Theta and Riverpod.

This project takes up the [official riverpod library project](https://github.com/rrousselGit/riverpod/tree/master/examples/counter) with the addition of [Theta](https://github.com/buildwiththeta/buildwiththeta).

With Theta, the UI of the application can be created visually, and it can be updated instantly.

This app is a basic example of how to create an app using Theta and a widely used state management library such as riverpod. It will show you how to link the clicking of remote elements with a state change and changes in the text of the remote component.

Main code:

```dart
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
              () => ref.read(counterProvider.notifier).increment()),
        ],
      ),
    );
  }
}
```