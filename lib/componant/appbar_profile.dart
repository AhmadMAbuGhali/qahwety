import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:qahwety/resources/color_manager.dart';
import 'package:qahwety/ui/profile_screens/my_order_screen.dart';

import '../resources/assets_manager.dart';
import '../ui/profile_screens/my_wallet.dart';
class AppBarProfile extends StatelessWidget {
  const AppBarProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageAssets.BG),
              fit: BoxFit.cover
            )
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                ),

                child: Image.asset(ImageAssets.Avatar,fit: BoxFit.cover,height: 80.h,width: 80.w,)),
            SizedBox(
              height: 19.h,
            ),
            Text('Abdulhamid Dawas',style: TextStyle(
              fontSize: 20.sp,color: Colors.white
            ),),
            Text('abdawas@gmail.com',style: TextStyle(
              color: Colors.white
            ),),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 55.w,top: 16.h,bottom: 37.h),
                  child: ElevatedButton(

                    onPressed: () {
                      Get.to(MyOrder());
                    },
                    child: Row(
                      children: [
                        SvgPicture.asset(IconAssets.Orders,color: ColorManager.white,),
                        SizedBox(
                          width: 12.w,
                        ),
                        Text('My Orders',style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white
                        ),)

                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      side: BorderSide(
                        width: 1,
                          color: Color(0xFFDA6368)
                      ),
                      elevation: 0,
                        primary: Colors.transparent,
                        minimumSize: Size(125.w, 40.h),
                        ),


                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left:16.w,top: 16.h,bottom: 37.h),
                  child: ElevatedButton(

                    onPressed: () {
                      Get.to(MyWallet());
                    },
                    child: Row(
                    children: [
                      SvgPicture.asset(IconAssets.Wallet,color: ColorManager.white,),
                      SizedBox(
                        width: 12.w,
                      ),
                      Text('My Wallet',style: TextStyle(
                          fontSize: 14,
                          color: Colors.white
                      ),)
                    ],
    ),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),

                      side: BorderSide(
                          width: 1,
                          color: Color(0xFFDA6368)
                      ),
                      elevation: 0,
                        primary: Colors.transparent,
                        minimumSize: Size(125.w, 40.h),
                        ),


                  ),
                ),

              ],
            )



          ],
        ),
      ),
    );
  }
}
