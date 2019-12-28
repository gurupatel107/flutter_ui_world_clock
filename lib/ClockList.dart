import 'package:flutter/material.dart';
import 'package:world_clock/ClockItem.dart';
import 'package:world_clock/model/TimeInfo.dart';
import 'package:dragablegridview_flutter/dragablegridview_flutter.dart';

class ClockList extends StatefulWidget {
  ClockList({Key key}) : super(key: key);

  final List<TimeInfo> list = [];

  @override
  _ClockListState createState() => _ClockListState(list);
}

class _ClockListState extends State<ClockList> {
  List<TimeInfo> list1 = [];
  _ClockListState(this.list1);

  @override
  void initState() {
    setState(() {
      list1 = this.getListItems();
    });
    super.initState();
  }

  getListItems() {
    List<TimeInfo> list = [];
    list.add(TimeInfo(
        city: 'Chennai', date: 'Mar 14', time: '11:20 AM', day: 'Mon'));
    list.add(TimeInfo(
        city: 'Newyork', date: 'Mar 14', time: '11:20 AM', day: 'Mon'));
    list.add(TimeInfo(
        city: 'Ahmedabad', date: 'Mar 14', time: '11:20 AM', day: 'Mon'));
    list.add(TimeInfo(
        city: 'Armstedarn', date: 'Mar 14', time: '11:20 AM', day: 'Mon'));
    list.add(TimeInfo(
        city: 'Armstedarn', date: 'Mar 14', time: '11:20 AM', day: 'Mon'));
    list.add(TimeInfo(
        city: 'Armstedarn', date: 'Mar 14', time: '11:20 AM', day: 'Mon'));
    list.add(TimeInfo(
        city: 'Armstedarn', date: 'Mar 14', time: '11:20 AM', day: 'Mon'));
    list.add(TimeInfo(
        city: 'Armstedarn', date: 'Mar 14', time: '11:20 AM', day: 'Mon'));
    list.add(TimeInfo(
        city: 'Armstedarn', date: 'Mar 14', time: '11:20 AM', day: 'Mon'));
    list.add(TimeInfo(
        city: 'Armstedarn', date: 'Mar 14', time: '11:20 AM', day: 'Mon'));

    print("list lenght " + list.length.toString());
    return list;
  }

       

  @override
  Widget build(BuildContext context) {
    print(list1.length);
    return Container(
      color: Colors.purple,

      child: GridView.builder(
        itemCount: list1.length,
        padding: EdgeInsets.all(15),
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 30),
        itemBuilder: (BuildContext context, int index) {
          return ClockItem(timeInfo : list1[index]);
        },
      ),
    );
  }
}
