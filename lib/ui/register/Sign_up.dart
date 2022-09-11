import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/resources/color_manager.dart';

import '../../componant/CustomTextFormFiled.dart';
import '../../componant/button.dart';

class SignUp extends StatelessWidget {
   SignUp({Key? key}) : super(key: key);
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController fullNameController = new TextEditingController();
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
              'Sign up',
              style: TextStyle(fontSize: 20),
            ),
          )),
      body: Column(
        children: [
        SizedBox(
        height: 20.h,
      ),
      CustomTextFormFiled(
        controller: fullNameController,
        lable: 'Full Name',
        hintText: 'please enter your Full Name',
      ),
      SizedBox(
        height: 20.h,
      ),
      CustomTextFormFiled(
        controller: emailController,
        lable: 'Email Address',
        hintText: 'please enter your Email Address',
      ),
      SizedBox(
        height: 20.h,
      ),
      Padding(
        padding: EdgeInsets.all(16.0),
        child: TextField(
          controller: passwordController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: 'Password',
              constraints: BoxConstraints(
                // minHeight: 50,
                  maxHeight: 75.h,
                  maxWidth: 400.w),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.black)),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Show', style: TextStyle(
                      color: Colors.black
                  ),),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(
                        width: 1.w,
                        color: Color(0xFFE2E2E2)
                    ),
                    primary: Colors.white,
                    elevation: 0,


                  ),
                ),
              )

          ),

        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Button(
          color: ColorManager.primary,
          onTap: () {},
          Lable: 'Sign up',
          width: double.infinity,
        ),
      ),
          Container(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'By clicking Sign Up I agree to Qahwety ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),
                  ),
                  TextSpan(
                    text: 'Privacy Policy ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.red
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      print('Privacy Policy');
                    },
                  ),

                ],
              ),
            ),
          ),
          Container(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'and ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),
                  ),
                  TextSpan(
                    text: 'Terms of Us',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.red
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {
                      print('Terms of Us');
                    },
                  ),
                ],
              ),
            ),
          )

    ]
    ,
    )
    ,
    );
  }
}
