
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qahwety/ui/cart_screens/cart_screen.dart';
import 'package:qahwety/ui/setting_screens/setting.dart';

import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import 'home_screens/home_screen.dart';
import 'menu_screens/menu.dart';
import 'profile_screens/profile_screen.dart';

class NavBar extends StatefulWidget {
  NavBar({Key? key}) : super(key: key);
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final pages = [
    HomeScreen(),
    CartScreen(),
    ProfileScreen(),
    Setting(),
    Menu(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: pages[index],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              // border: Border(top: BorderSide(color: Colors.red, width: 1.0)),

              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.r),
                  topLeft: Radius.circular(10.r)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.r),
                topRight: Radius.circular(10.r),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                elevation: 0.0,
                currentIndex: index,
                onTap: (newindex) {
                  setState(() {
                    index = newindex;
                  });
                  setState(() {});
                },
                items: [


                  BottomNavigationBarItem(
                      label: '',
                      icon: index == 0
                          ? SvgPicture.asset(
                        IconAssets.Home,
                        height: 25.h,
                        width: 25.w,
                        color: ColorManager.primary,
                      )
                          : SvgPicture.asset(
                        IconAssets.Home,
                        height: 25.h,
                        width: 25.w,
                        color: ColorManager.button_unused,
                      )),
                  BottomNavigationBarItem(
                      label: '',
                      icon: index == 1
                          ? SvgPicture.asset(
                        IconAssets.Cart,
                        height: 25.h,
                        width: 25.w,
                        color: ColorManager.primary,
                      )
                          : SvgPicture.asset(
                        IconAssets.Cart,
                        height: 25.h,
                        width: 25.w,
                        color: ColorManager.button_unused,
                      )),
                  BottomNavigationBarItem(
                      label: '',
                      icon: index == 2
                          ? SvgPicture.asset(
                        IconAssets.User,
                        height: 25.h,
                        width: 25.w,
                        color: ColorManager.primary,
                      )
                          : SvgPicture.asset(
                        IconAssets.User,
                        height: 25.h,
                        width: 25.w,
                        color: ColorManager.button_unused,
                      )),
                  BottomNavigationBarItem(
                      label: '',
                      icon: index == 3
                          ? SvgPicture.asset(
                        IconAssets.bolt,
                        height: 25.h,
                        width: 25.w,
                        color: ColorManager.primary,
                      )
                          : SvgPicture.asset(
                        IconAssets.bolt,
                        height: 25.h,
                        width: 25.w,
                        color: ColorManager.button_unused,
                      )),
                  BottomNavigationBarItem(
                      label: '',
                      icon: index == 4
                          ? SvgPicture.asset(
                        IconAssets.menuRight,
                        height: 25.h,
                        width: 25.w,
                        color: ColorManager.primary,
                      )
                          : SvgPicture.asset(
                        IconAssets.menuRight,
                        height: 25.h,
                        width: 25.w,
                        color: ColorManager.button_unused,
                      )),

                ],
              ),
            ),
          ),
        ));
  }

}