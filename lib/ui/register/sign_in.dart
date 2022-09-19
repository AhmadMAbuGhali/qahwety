import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/componant/button.dart';
import 'package:qahwety/resources/assets_manager.dart';
import 'package:qahwety/ui/home_screens/home_screen.dart';
import 'package:qahwety/ui/nav_bar.dart';
import 'package:qahwety/ui/register/Sign_up.dart';

import '../../componant/CustomTextFormFiled.dart';
import '../../resources/color_manager.dart';

import 'forgot_password.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();

}

class _SignInState extends State<SignIn> {
  bool emailControllerFull = false;
  bool passwordControllerFull = false;
  bool Fulldata = false;
  late TextEditingController emailController;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset : false,
            body: Column(
      children: [
        Container(
          height: 300.3.h,
          width: 416.w,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                height: 300.h,
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(ImageAssets.Head),
                  )),
                ),
              ),
              Positioned(
                  top: 20,
                  right: 0,
                  left: 50,
                  child: Image.asset(
                    ImageAssets.Logo,
                    height: 94.h,
                    width: 117,
                  )),
              Positioned(
                  top: 120,
                  right: 0,
                  left: 90,
                  child: Image.asset(
                    ImageAssets.Cup,
                    height: 200.h,
                    width: 200,
                  )),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 5.h),
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'please enter your eamil';
              }
              return null;
            },
            controller: emailController,
            onChanged: (value) {
              isFull();
            },
            decoration: textFormDecoration.copyWith(
                labelText: 'email', hintText: 'Enter your email'),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 5.h),
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'please enter your password';
              }
              return null;
            },
            controller: passwordController,
            onChanged: (value) {
              isFull();
            },
            decoration: textFormDecoration.copyWith(
                labelText: 'Password', hintText: 'Enter your Password'),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 10.h),
          child: Button(
            color:  Fulldata ? ColorManager.primary : ColorManager.gray,
            onTap: Fulldata
                ? () {
                    Get.off(NavBar());
                  }
                : () {},
            Lable: 'Sign in',
            width: double.infinity,
          ),
        ),
        Center(
          child: GestureDetector(
            onTap: () => Get.to(ForgotPassword()),
            child: Text(
              'Forgot Password?',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don’t have an account?',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                width: 5.w,
              ),
              TextButton(
                  onPressed: () => Get.to(SignUp()),
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: ColorManager.primary),
                  ))
            ],
          ),
        ),
      ],
    )));
  }

  void isFull() {


   setState(() {
  if(emailController.text.toString().trim().isNotEmpty){
    emailControllerFull = true;
  }
  if(passwordController.text.toString().trim().isNotEmpty){
    passwordControllerFull = true;
  }
  if ( emailControllerFull && passwordControllerFull ) {
    Fulldata = true;

  }
   });


  }
}

var textFormDecoration = InputDecoration(
  labelText: 'Full Name',
  hintText: 'Enter your Full Name',
  border: OutlineInputBorder(),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 1),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 2),
  ),
);
