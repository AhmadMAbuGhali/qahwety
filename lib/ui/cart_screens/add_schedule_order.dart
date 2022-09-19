import 'package:flutter/material.dart';
import 'package:qahwety/resources/color_manager.dart';

class AddScheduleOrder extends StatelessWidget {
   AddScheduleOrder({Key? key, required this.dayName, required this.date, required this.time}) : super(key: key);
 final String dayName;
 final String date;
 final String time;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.white,
//      margin: new EdgeInsets.all(8.0),
      child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListBody(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: [
                    Text(dayName,style: TextStyle(color: ColorManager.primary),),
                    Text(date),
                  ],

                ),
                Text(time),
              ],
            )
          ],
        ),
      ),
    );
  }
}
