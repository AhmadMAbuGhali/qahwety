import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:qahwety/ui/nav_bar.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';

class FilterScreen extends StatefulWidget {

   FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int _value = 0;

  RangeValues _currentRangeValues = const RangeValues(0, 500);

  TextEditingController minValue = new TextEditingController();

  TextEditingController maxValue = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(
              width: 4.w,
            ),
            GestureDetector(
              onTap:()=> Get.back(),
              child: SvgPicture.asset(
                IconAssets.Close,
                height: 25.h,
                width: 25.w,
                color: ColorManager.white,
              ),
            ),
            SizedBox(
              width: 4.w,
            ),
          ],
        ),
        title: Center(
          child: SvgPicture.asset(
            IconAssets.Mark,
            height: 25.h,
            width: 25.w,
            color: ColorManager.white,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.off(FilterScreen());
            },
            child: SvgPicture.asset(
              IconAssets.Check,
              height: 25.h,
              width: 25.w,
              color: ColorManager.white,
            ),
          ),
          SizedBox(
            width: 11.w,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Cofe State'),
                ToggleSwitch(
                  fontSize: 16.0,
                  initialLabelIndex: 1,
                  activeBgColor: [ColorManager.primary],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.white,
                  inactiveFgColor: Colors.grey,
                  totalSwitches: 2,
                  cornerRadius: 20.0,
                  borderWidth: 2.0,
                  borderColor: [ColorManager.button_unused],
                  labels: ['Open', 'Close'],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text('Price Range'),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 90.w,
                        height: 40.h,
                        child: TextField(
                          controller: minValue,
                          keyboardType: TextInputType.number,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        )),
                    Text('K.D'),
                    Container(
                        width: 90.w,
                        height: 40.h,
                        child: TextField(
                            controller: maxValue,
                            keyboardType: TextInputType.number,
                            decoration:
                                InputDecoration(border: OutlineInputBorder()))),
                    Text('K.D'),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 30.w,),
                  Container(
                   width: 260,
                    child: RangeSlider(
                    values: _currentRangeValues,
                    max: 500,
                    min: 0,
                    divisions:2,

                   onChanged: (RangeValues value) {

                    },


                ),
                  )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text('Rating'),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => setState(() => _value = 0),
                      child: Container(
                        height: 36,
                        width: 97,
                        child:  _value == 0 ? Image.asset(ImageAssets.threeStarwithborder) : Image.asset(ImageAssets.threeStar),
                      ),
                    ),
                    SizedBox(width: 4),
                    GestureDetector(
                      onTap: () => setState(() => _value = 1),
                      child: Container(
                        height: 36,
                        width: 97,
                        child:  _value == 1 ? Image.asset(ImageAssets.fourStarwithborder) : Image.asset(ImageAssets.fourStar),
                      ),
                    ),
                    SizedBox(width: 4),
                    GestureDetector(
                      onTap: () => setState(() => _value = 2),
                      child: Container(
                          height: 36,
                          width: 97,
                          child: _value==2? Image.asset(ImageAssets.fiveStarwithborder):Image.asset(ImageAssets.fiveStar),
                      ),
                    ),
                  ],
                ),
                // Row(
                //   mainAxisAlignment:MainAxisAlignment.spaceAround,
                //   children: [
                //     Image.asset(ImageAssets.threeStar),
                //     Image.asset(ImageAssets.fourStar),
                //     Image.asset(ImageAssets.fiveStar),
                //   ],
                // ),
                SizedBox(
                  height: 15.h,
                ),
                TextButton(onPressed: (){
                  setState(() {
                    _value = -1;
                  minValue = new TextEditingController();
                    maxValue = new TextEditingController();
                  });

                }, child: Text('Reset Filter',style: TextStyle(color: ColorManager.primary,fontSize: 14),))

              ],
            )
          ],
        ),
      ),
    ));
  }
}
