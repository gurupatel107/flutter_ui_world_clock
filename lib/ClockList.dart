import 'package:flutter/material.dart';
import 'package:world_clock/ClockItem.dart';
import 'package:world_clock/model/TimeInfo.dart';

class ClockList extends StatefulWidget {
  ClockList({Key key}) : super(key: key);

  List<TimeInfo> list = [];

  @override
  _ClockListState createState() => _ClockListState(list);
}

class _ClockListState extends State<ClockList> {
  
  List<TimeInfo> list1;
  _ClockListState(this.list1);

  getListItems(){
    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: GridView.builder(
        itemCount: 8,
        padding: EdgeInsets.all(15),
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 30),
        itemBuilder: (BuildContext context, int index) {
          return ClockItem();
        },
      ),
    );
  }
}
