import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/resources/color_manager.dart';

import '../../resources/assets_manager.dart';
import '../home_screens/item_details.dart';

class PromotedOffer extends StatelessWidget {
  const PromotedOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Promoted Offers'),
          centerTitle: true,
        ),
        body: GridView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 14,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
                childAspectRatio: 445 / 450),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(top: 20.h, left: 10.w),
                child: GestureDetector(
                  onTap: () {
                    Get.to(ItemDetails());
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              color: ColorManager.primary,
                                child: Center(
                                    child: Text(
                              '30% off',
                              style: TextStyle(color: ColorManager.white),
                            )))
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Image.asset(
                          ImageAssets.cofeIcon,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Cafe Bateel',
                          style: TextStyle(
                            color: Color(0xFF0D0D0D),
                            fontSize: 18,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30.w),
                          child: Text('Cafe, Healthy Food, Breakfast',
                              style: TextStyle(
                                  wordSpacing: 5,
                                  color: Color(0xFF6F6C6C),
                                  fontSize: 13),
                              maxLines: 2,
                              softWrap: true),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
