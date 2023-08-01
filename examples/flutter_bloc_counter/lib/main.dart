import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_counter/app.dart';
import 'package:flutter_bloc_counter/counter_observer.dart';
import 'package:theta/theta.dart';

Future<void> main() async {
  Bloc.observer = const CounterObserver();
  await Theta.initialize(
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWYiOiI1NTE1MTU3Ni1jZGFkLTQ2ZGUtYWI3Mi01OGEzNDY1ZjM2NGMiLCJhbm9uX2tleSI6IjE0MzRkZDU5LTAwOWYtNGQ2Zi05OWE5LTQ4N2Y3Yzk1ODZhMCIsImlhdCI6MTY4OTk2MzQzNCwiZXhwIjoxNzIxNTIxMDM0LCJpc3MiOiJodHRwczovL2J1aWxkd2l0aHRoZXRhLmNvbSJ9.q32FmW5YAqzIncjRw0KXBwDr3J12qFumt5DrbEeyTKk',
  );
  runApp(const CounterApp());
}
