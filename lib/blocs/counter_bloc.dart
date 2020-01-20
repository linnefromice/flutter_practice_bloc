import 'dart:async';

class CounterBloc {
  final _actionController = StreamController<void>();
  Sink<void> increment() => _actionController.sink;

  final _countController = StreamController<int>();
  Sink<int> count() => _countController.sink;

  int _count = 0;

  CounterBloc() {
    _actionController.stream.listen((_) {
      _count++;
      _countController.sink.add(_count);
    });
  }

  void dispose() {
    _actionController.close();
    _countController.close();
  }
}