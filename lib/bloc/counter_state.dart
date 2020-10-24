class CounterState {
  final int counter;

  const CounterState({this.counter});

  // initialize only once
  factory CounterState.initial() => CounterState(counter: 0);
}
