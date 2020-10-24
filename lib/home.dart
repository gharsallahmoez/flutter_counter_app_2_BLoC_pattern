import 'package:counter_app_2/bloc/counter_bloc.dart';
import 'package:counter_app_2/bloc/counter_event.dart';
import 'package:counter_app_2/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder(
              cubit: BlocProvider.of<CounterBloc>(context),
              builder: (context, CounterState state) => Text(
                '${state.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          onPressed: () => BlocProvider.of<CounterBloc>(context).onIncrement(),
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () => BlocProvider.of<CounterBloc>(context).onDecrement(),
          tooltip: 'Decrement',
          child: Icon(Icons.remove),
        ),
      ]), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
