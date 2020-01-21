import 'dart:async';

class BirthdayFormBloc {
  final _inputYearController = StreamController<String>();
  Sink<String> get inputYear => _inputYearController.sink;
  Stream<String> get getYear => _inputYearController.stream;

  final _inputMonthController = StreamController<String>();
  Sink<String> get inputMonth => _inputMonthController.sink;
  Stream<String> get getMonth => _inputMonthController.stream;

  final _inputDayController = StreamController<String>();
  Sink<String> get inputDay => _inputDayController.sink;
  Stream<String> get getDay => _inputDayController.stream;

  BirthdayFormBloc() {
    inputYear.add('YYYY');
    inputMonth.add('MM');
    inputDay.add('DD');
  }

  void dispose() {
    _inputYearController.close();
    _inputMonthController.close();
    _inputDayController.close();
  }
}