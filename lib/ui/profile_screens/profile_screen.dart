import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../componant/appbar_profile.dart';
import 'editname_screen.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 280.h,
                child: AppBarProfile()),
            GestureDetector(
              onTap: ()=>Get.to(EditNameScreen()),
              child: Container(
                height: 65.h,
                width: 375.w,
                child: Card(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 16.w,bottom: 14.h,top: 18.h),
                        child: Text('Full Name'),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left:130.w,bottom: 14.h,top: 18.h),
                        child: Text('Abdulhamid Dawas',style: TextStyle(
                          color: Color(0xFF6F6C6C),
                          fontSize: 14.sp
                        ),),
                      ),
                      Icon(Icons.arrow_forward_ios,size: 20,color: Color(0xFF6F6C6C),)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 65.h,
              width: 375.w,
              child: Card(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 16.w,bottom: 14.h,top: 18.h),
                      child: Text('Email Address'),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left:100.w,bottom: 14.h,top: 18.h),
                      child: Text('abdawas@gmail.com',style: TextStyle(
                        color: Color(0xFF6F6C6C),fontSize: 14.sp
                      ),),
                    ),
                    Icon(Icons.arrow_forward_ios,size: 20,color: Color(0xFF6F6C6C),)
                  ],
                ),
              ),
            ),
            Container(
              height: 65.h,
              width: 375.w,
              child: Card(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 16.w,bottom: 14.h,top: 18.h),
                      child: Text('Phone'),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left:180.w,bottom: 14.h,top: 18.h),
                      child: Text('+965 59 963 0000',style: TextStyle(
                        color: Color(0xFF6F6C6C),fontSize: 14.sp
                      ),),
                    ),
                    Icon(Icons.arrow_forward_ios,size: 20,color: Color(0xFF6F6C6C),)
                  ],
                ),
              ),
            ),
            Container(
              height: 65.h,
              width: 375.w,
              child: Card(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 16.w,bottom: 14.h,top: 18.h),
                      child: Text('Location'),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left:210.w,bottom: 14.h,top: 18.h),
                      child: Text('Kuwait',style: TextStyle(
                        color: Color(0xFF6F6C6C),fontSize: 14.sp
                      ),),
                    ),
                    Icon(Icons.arrow_forward_ios,size: 20,color: Color(0xFF6F6C6C),)
                  ],
                ),
              ),
            ),
            Container(
              height: 65.h,
              width: 375.w,
              child: Card(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 16.w,bottom: 14.h,top: 18.h),
                      child: Text('Location'),
                    ),
                    Icon(Icons.arrow_forward_ios,size: 20.sp,color: Color(0xFF6F6C6C),)
                  ],
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
