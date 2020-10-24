import 'package:counter_app_2/bloc/counter_event.dart';
import 'package:counter_app_2/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc(CounterState initialState) : super(initialState);

  void onIncrement() {
    add(CounterIncrement());
  }

  void onDecrement() {
    add(CounterDecrement());
  }

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is CounterIncrement) {
      yield CounterState(counter: state.counter + 1);
    } else if (event is CounterDecrement) {
      yield CounterState(counter: state.counter - 1);
    }
  }
}
