import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/componant/button.dart';
import 'package:qahwety/resources/color_manager.dart';

import '../../componant/CustomTextFormFiled.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);
  TextEditingController fPControoler = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Get.back(),
          ),
          title: Center(
            child: Text(
              'Forgot Password',
              style: TextStyle(fontSize: 20),
            ),
          )),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            CustomTextFormFiled(
              lable: 'Email Address',
              hintText: 'please enter your Email Address',
            controller: fPControoler,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Button(
                onTap: () {},
                Lable: 'Reset',
                width: double.infinity,
                color: ColorManager.primary,
              ),
            )
          ],
        ),
      ),
    );
  }
}
