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
        appBar: AppBar(
          leading: IconButton(onPressed: ()=>Get.off(CheckoutScreen()), icon: Icon(Icons.close)),
          title: Text('Delivery Info'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.check))
          ],

        ),

        body: Column(
          children: [
            Center(
              child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    constraints: BoxConstraints(
                      // minHeight: 50,
                        maxHeight: 75.h,
                        maxWidth: 323.w),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),

                  )
              ),
            ),
            SizedBox(
              height:16.h ,
            ),
            Center(
              child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
                    constraints: BoxConstraints(
                      // minHeight: 50,
                        maxHeight: 75.h,
                        maxWidth: 323.w),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),

                  )
              ),
            ),
            SizedBox(
              height:16.h ,
            ),
            Center(
              child: TextField(

                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    hintText: 'Address',
                    constraints: BoxConstraints(
                      // minHeight: 50,
                        maxHeight: 75.h,
                        maxWidth: 323.w),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),

                  )
              ),
            ),
            SizedBox(
              height:16.h ,
            ),
            Center(
              child: TextField(

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

                  )
              ),
            ),
            SizedBox(
              height:16.h ,
            ),
            Center (
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(

                      textAlign: TextAlign.start,

                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                        hintText: 'Note',

                        contentPadding: EdgeInsets.symmetric(vertical: 30.h),

                        constraints: BoxConstraints(

                          maxWidth: 323.w,



                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),

                      )
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}