import 'package:counter_app_2/bloc/counter_bloc.dart';
import 'package:counter_app_2/bloc/counter_event.dart';
import 'package:counter_app_2/bloc/counter_state.dart';
import 'package:counter_app_2/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(CounterState(counter: 0)),
          child: Home(),
        ));
  }
}
