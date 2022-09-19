import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'checkout_screen.dart';


class DeliveryInfoScreen extends StatefulWidget {
  const DeliveryInfoScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryInfoScreen> createState() => _DeliveryInfoScreenState();
}

class _DeliveryInfoScreenState extends State<DeliveryInfoScreen> {

  String dropdownvalue = 'Item 1';


  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
          leading: IconButton(onPressed: ()=>Get.back(), icon: Icon(Icons.close)),
          title: Text('Delivery Info'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.check))
          ],

        ),

        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h,),
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    constraints: BoxConstraints(
                      // minHeight: 50,
                        maxHeight: 75.h,
                        maxWidth: 323.w),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),

                  )
              ),
              SizedBox(
                height:16.h ,
              ),
              TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
                    constraints: BoxConstraints(
                      // minHeight: 50,
                        maxHeight: 75.h,
                        maxWidth: 323.w),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),

                  )
              ),
              SizedBox(
                height:16.h ,
              ),
              TextField(

                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    hintText: 'Address',
                    constraints: BoxConstraints(
                      // minHeight: 50,
                        maxHeight: 75.h,
                        maxWidth: 323.w),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),

                  )
              ),
              SizedBox(
                height:16.h ,
              ),
              TextField(

                  keyboardType: TextInputType.none,
                  readOnly: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.arrow_forward_ios,size:15 ,color: Color(0xFF6F6C6C),),
                    hintText: 'City',
                    constraints: BoxConstraints(
                      // minHeight: 50,
                        maxHeight: 75.h,
                        maxWidth: 323.w
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),

                  )
              ),
              SizedBox(
                height:16.h ,
              ),
              TextField(

                  textAlign: TextAlign.start,
                  minLines: 3,
                  maxLines: null,

                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    hintText: 'Note',



                    constraints: BoxConstraints(

                      maxWidth: 323.w,



                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),

                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}