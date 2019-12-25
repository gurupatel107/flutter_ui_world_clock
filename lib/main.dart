import 'package:flutter/material.dart';
import 'package:world_clock/ClockList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'World Clock',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ClockList(),
        appBar: AppBar(
            title: Text('Clock List'),

        ),
      )
    );
  }
}
