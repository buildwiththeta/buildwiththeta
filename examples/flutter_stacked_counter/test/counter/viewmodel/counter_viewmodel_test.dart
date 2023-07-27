import 'package:flutter_stacked_counter/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterViewmodel', () {
    test('initial state is 0', () {
      expect(CounterViewmodel().state, 0);
    });

    group('increment', () {
      test('returns [1] when state is 0', () {
        final viewModel = CounterViewmodel();
        viewModel.increment();
        expect(viewModel.state, 1);
      });

      test('returns [1,2] when state is 0', () {
        final viewModel = CounterViewmodel();
        viewModel.increment();
        expect(viewModel.state, 1);
        viewModel.increment();
        expect(viewModel.state, 2);
      });
      test('returns [42] when state is 41', () {
        final viewModel = CounterViewmodel(41);
        viewModel.increment();
        expect(viewModel.state, 42);
      });
    });

    group('decrement', () {
      test('returns [-1] when state is 0', () {
        final viewModel = CounterViewmodel();
        viewModel.decrement();
        expect(viewModel.state, -1);
      });

      test('returns [-1,-2] when state is 0', () {
        final viewModel = CounterViewmodel();
        viewModel.decrement();
        expect(viewModel.state, -1);
        viewModel.decrement();
        expect(viewModel.state, -2);
      });
      test('returns [42] when state is 43', () {
        final viewModel = CounterViewmodel(43);
        viewModel.decrement();
        expect(viewModel.state, 42);
      });
    });
  });
}
