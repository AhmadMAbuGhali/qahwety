import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/resources/assets_manager.dart';

import '../../componant/button.dart';
import '../../componant/page_view.dart';
import '../../componant/select_page.dart';
import '../../resources/color_manager.dart';
import '../register/sign_in.dart';

final List<String> listImages = [
  ImageAssets.createOrder,
  ImageAssets.ScheduleandPay,
  ImageAssets.Enjoy,
];

class Walkthrough extends StatefulWidget {
  const Walkthrough({Key? key}) : super(key: key);

  @override
  State<Walkthrough> createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  late PageController _pageController;
  int _currentPage = 0;

  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 350.h,
                child: Expanded(
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (int value) {
                      print('Page: #$value');
                      setState(() => _currentPage = value);
                    },
                    scrollDirection: Axis.horizontal,
                    children: [
                      ViewPage(
                        img: ImageAssets.createOrder,
                        name: 'create Order',
                        subname:
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                      ),
                      ViewPage(
                          img: ImageAssets.ScheduleandPay,
                          name: 'Schedule & Pay',
                          subname:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
                      ViewPage(
                          img: ImageAssets.Enjoy,
                          name: 'Enjoy',
                          subname:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SelectPage(selected: _currentPage == 0),
                SelectPage(
                  selected: _currentPage == 1,
                  horizontalMargin: 14,
                ),
                SelectPage(
                  selected: _currentPage == 2,
                ),
              ]),
              SizedBox(height: 100.h),
              Button(
                color: ColorManager.primary,
                onTap: () => Get.to(SignIn()),
                Lable: 'Sign in',
                width: 240.w,
              )
            ],
          ),
        ),
      ),
    );
  }
}
