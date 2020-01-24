import 'package:flutter/material.dart';
import 'package:flutter_practice_bloc/screen/birthday_form_screen.dart';
import 'package:flutter_practice_bloc/screen/counter_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CounterScreen();
    /*
    return Scaffold(
      appBar: AppBar(title: Text('Bloc Sample')),
      body: Center(
        child: Text('Bloc Sample'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_1),
            title: Text('counter'),

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.filter_2),
              title: Text('birthday')
          ),
        ],
        onTap: (value) {
          if (value == 0) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CounterScreen()));
          }
          if (value == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => BirthdayFormScreen()));
          }
        },
      ),
    );
     */
  }
}
