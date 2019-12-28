import 'package:flutter/material.dart';
import 'package:world_clock/model/TimeInfo.dart';

class ClockItem extends StatefulWidget {
  final TimeInfo timeInfo;
  ClockItem({this.timeInfo});
  @override
  _ClockItemState createState() => _ClockItemState(timeInfo: timeInfo);
}

class _ClockItemState extends State<ClockItem> {
  TimeInfo timeInfo;
  _ClockItemState({this.timeInfo});

  @override
  void initState() { 
    super.initState();
    
    print(timeInfo);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,

      decoration: BoxDecoration(shape:BoxShape.circle,color: Colors.purpleAccent,
      border: Border.all(width: 1 ,color: Colors.blue)),
      child: Center(child: Text(timeInfo.city),),
    );
  }
}