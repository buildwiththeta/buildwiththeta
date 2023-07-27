import 'package:stacked/stacked.dart';

/// {@template counter viewmodel}
/// A [ViewModel] which manages an [int] as its state.
/// {@endtemplate}
class CounterViewmodel extends BaseViewModel {
  CounterViewmodel([int? seed]) : _counter = seed ?? 0;
  int _counter = 0;
  int get state => _counter;

  /// Add 1 to the current state.
  void increment() {
    _counter++;
    notifyListeners();
  }

  /// Subtract 1 from the current state.
  void decrement() {
    _counter--;
    notifyListeners();
  }
}
