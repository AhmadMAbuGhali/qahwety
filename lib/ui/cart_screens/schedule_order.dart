import 'package:flutter/material.dart';
import 'package:qahwety/resources/color_manager.dart';
import 'package:qahwety/ui/cart_screens/calendar_screen.dart';

class ScheduleOrder extends StatefulWidget {
  const ScheduleOrder({Key? key}) : super(key: key);

  @override
  State<ScheduleOrder> createState() => _ScheduleOrderState();
}

class _ScheduleOrderState extends State<ScheduleOrder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Schedule Order'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.check))
          ],
        ),
        body: Container(
          child: Column(
            children: [
              CalendarScreen(),



            ],
          ),
        ),
        bottomSheet: BottomSheet(builder: (BuildContext context) {
          return  Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: ColorManager.primary,
                  child: IconButton(
                    onPressed: () {

                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                )
              ],
            ),
          );
        }, onClosing: () {  },),
      ),
    );
  }
}
