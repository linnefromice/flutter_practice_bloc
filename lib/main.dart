import 'package:flutter/material.dart';
import 'package:flutter_practice_bloc/screen/counter_screen.dart';

import 'screen/birthday_form_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BirthdayFormScreen();
  }
}
