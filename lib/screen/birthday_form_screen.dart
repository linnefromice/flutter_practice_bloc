import 'package:flutter/material.dart';
import 'package:flutter_practice_bloc/blocs/birthday_form_screen.dart';
import 'package:provider/provider.dart';

class BirthdayFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birthday Form App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Provider<BirthdayFormBloc>(
        create: (context) => BirthdayFormBloc(),
        dispose: (context, bloc) => bloc.dispose(),
        child: HomePage(),
      )
    );
  }
}

class HomePage extends StatelessWidget {

  Widget _buildInputArea(BirthdayFormBloc bloc) => Row(
    children: <Widget>[
      Expanded(
        flex: 1,
        child: TextField(
          decoration: InputDecoration(labelText: 'YEAR'),
          onChanged: (String value) async {
            bloc.inputYear.add(value);
          },
        ),
      ),
      Expanded(
        flex: 1,
        child: TextField(
          decoration: InputDecoration(labelText: 'MONTH'),
          onChanged: (String value) async {
            bloc.inputMonth.add(value);
          },
        ),
      ),
      Expanded(
        flex: 1,
        child: TextField(
          decoration: InputDecoration(labelText: 'DAY'),
          onChanged: (String value) async {
            bloc.inputDay.add(value);
          },
        ),
      ),
    ],
  );

  Widget _buildDisplayArea(BirthdayFormBloc bloc) => Row(
    children: <Widget>[
      Expanded(
        flex: 1,
        child: StreamBuilder(
          initialData: '',
          stream: bloc.getYear,
          builder: (context, snapshot) {
            return Text('${snapshot.data}');
          },
        ),
      ),
      Expanded(
        flex: 1,
        child: StreamBuilder(
          initialData: '',
          stream: bloc.getMonth,
          builder: (context, snapshot) {
            return Text('${snapshot.data}');
          },
        ),
      ),
      Expanded(
        flex: 1,
        child: StreamBuilder(
          initialData: '',
          stream: bloc.getDay,
          builder: (context, snapshot) {
            return Text('${snapshot.data}');
          },
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<BirthdayFormBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Birthday Form App')),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: _buildInputArea(bloc)
            ),
            Container(
              child: _buildDisplayArea(bloc)
            )
          ],
        ),
      ),
    );
  }
}