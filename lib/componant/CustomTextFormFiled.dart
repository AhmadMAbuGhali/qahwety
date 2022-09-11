import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormFiled extends StatelessWidget {
  final String lable;
  final String hintText;
  final TextEditingController controller;
  const CustomTextFormFiled({

    Key? key, required this.lable, required this.hintText, required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric( horizontal: 16.0.w,vertical: 5.h),
      child: Container(
        width: double.infinity,
        child: TextFormField(

          validator: (value) {
            if (value!.isEmpty) {
              return 'please enter your ${lable}';
            }

            return null;
          },
          controller: controller,
          decoration: textFormDecoration.copyWith(
              labelText: lable, hintText:hintText),
        ),
      ),
    );
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
