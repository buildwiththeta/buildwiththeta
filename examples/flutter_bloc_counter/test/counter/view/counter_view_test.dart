// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_counter/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCounterCubit extends MockCubit<int> implements CounterCubit {}

void main() {
  late CounterCubit counterCubit;

  setUp(() {
    counterCubit = MockCounterCubit();
  });

  group('CounterView', () {
    testWidgets('renders current CounterCubit state', (tester) async {
      when(() => counterCubit.state).thenReturn(42);
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: counterCubit,
            child: CounterView(),
          ),
        ),
      );
      expect(find.text('42'), findsOneWidget);
    });
  });
}
