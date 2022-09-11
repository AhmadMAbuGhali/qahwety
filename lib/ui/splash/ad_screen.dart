import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/ui/splash/walkthrough.dart';

import '../../resources/assets_manager.dart';


class AdScreen extends StatelessWidget {
  const AdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageAssets.BG),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
            Column(
            children: [
            SizedBox(height: 20.h,),
            Row(
              children: [
                Spacer(),
                TextButton(
                  onPressed: ()=>Get.to(Walkthrough()),
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h,),
            Image.asset(ImageAssets.Ads, width: double.infinity,fit: BoxFit.cover,)],
            ), ]


        ),
      ),
    ));
  }
}
