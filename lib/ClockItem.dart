import 'package:flutter/material.dart';

class ClockItem extends StatefulWidget {
  ClockItem({Key key}) : super(key: key);

  @override
  _ClockItemState createState() => _ClockItemState();
}

class _ClockItemState extends State<ClockItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,

      decoration: BoxDecoration(shape:BoxShape.circle,color: Colors.purpleAccent,
      border: Border.all(width: 1 ,color: Colors.blue)),
    );
  }
}