
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import '../../resources/assets_manager.dart';
import 'ad_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(AdScreen());
    });
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(

        body:  Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageAssets.BG),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(

            child: Column(
mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                SizedBox(height: 81.2.h,),
                Image.asset(ImageAssets.Logo),
                SizedBox(height: 81.2.h,),
                Image.asset(ImageAssets.Cup),


              ],
            ),
          ),
        )
      ),
    );
  }
}