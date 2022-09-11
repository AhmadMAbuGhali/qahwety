import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/resources/color_manager.dart';
import '../../resources/assets_manager.dart';
import '../home_screens/item_details.dart';


class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Notification'),
          centerTitle: true,
        ),
        backgroundColor: Color(0xFFF5F5F5),

        body: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 7,

            itemBuilder: (context, index) {
              return Container(
                height: 70,
                color: ColorManager.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Lorem Ipsum is simply dummy text of the \nprinting and typesetting.',textAlign: TextAlign.start,),
                      Text('28 Feb 2018'),

                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
