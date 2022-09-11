import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/resources/color_manager.dart';

import 'package:qahwety/ui/cart_screens/schedule_order.dart';
import 'package:toggle_switch/toggle_switch.dart';


import '../../resources/assets_manager.dart';
import 'delivery_info_screen.dart';
import 'pay_screen.dart';

class CheckoutScreen extends StatefulWidget {
  CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int item = 1;
  int countitem =2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: ColorManager.white,
            ),
          ),
          title: Text(
            'Checkout',
            style: TextStyle(color: ColorManager.white),
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Column(children: [
            Container(
              color: ColorManager.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Text('Order summary'),
                      ],
                    ),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 5),
                          child: Container(
                            color: ColorManager.white,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      ImageAssets.cupCart,
                                      width: 64.w,
                                      height: 64.h,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Wiener Schnitze',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    Text(
                                      'Cafe Bateel',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                    Text(
                                      '14 K.D',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: ColorManager.primary),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color:
                                                  ColorManager.button_unused)),
                                      child: Text('QTY 1'),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Price'),
                        Text(
                          '14 K.D',
                          style: TextStyle(color: ColorManager.primary),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: double.infinity,
              color: ColorManager.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Delivery Info'),
                    Spacer(),
                    Text('Abdulhamid Dawas, Kuwait'),
                    IconButton(
                        onPressed: () {
                          Get.to(DeliveryInfoScreen());
                        },
                        icon: Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              color: ColorManager.white,
              height: 60.h,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: ToggleSwitch(
                      fontSize: 16.0,
                      initialLabelIndex: item,
                      activeBgColor: [ColorManager.primary],
                      activeFgColor: Colors.white,
                      inactiveBgColor: Colors.white,
                      inactiveFgColor: Colors.grey,
                      totalSwitches: 2,
                      minWidth: 375,
                      minHeight: 40,
                      cornerRadius: 20.0,
                      borderWidth: 2.0,
                      borderColor: [ColorManager.button_unused],
                      labels: ['Order Now', 'Schedule Order'],
                      onToggle: (index) {
                        if (index == 1) {
                          setState(() {

                            item = 1;
                            countitem=2;
                          });
                        } else if (index == 0) {
                          setState(() {

                            item = 0;
                            countitem = 0;
                          });
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Schedule(
              item: countitem,
            )
          ]),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){Get.to(PayScreen()); },
            child: Container(
              height: 64,
              width: double.infinity,
              color: ColorManager.primary,
              child: Center(
                  child: Text(
                'Pay Now',
                style: TextStyle(color: ColorManager.white, fontSize: 16),
              )),
            ),
          ),
        ),
      ),
    );
  }
}

class Schedule extends StatelessWidget {
  final int item;

  Schedule({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: item,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            color: ColorManager.white,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Monday',
                        style: TextStyle(color: ColorManager.primary),
                      ),
                      Text(
                        '9 November 2018',
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text('10:00 Am'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.to(ScheduleOrder());
                          },
                          icon: Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
