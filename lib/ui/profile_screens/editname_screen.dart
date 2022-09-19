import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EditNameScreen extends StatefulWidget {
  const EditNameScreen({Key? key}) : super(key: key);

  @override
  State<EditNameScreen> createState() => _EditNameScreenState();
}

class _EditNameScreenState extends State<EditNameScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
          backgroundColor: Color(0xFFC92026),
          leading: IconButton(onPressed: () {
            Get.back();
          }, icon: Icon(Icons.close)),
          title: Text('Edit Name'),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.check))],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 26.w, top: 30.h),
              child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Abdulhamid Dawas',
                    constraints: BoxConstraints(
                        // minHeight: 50,
                        maxHeight: 75.h,
                        maxWidth: 323.w),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xFFE2E2E2),
                      ),

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFE2E2E2))),

                  )),
            )
          ],
        ),
      ),
    );
  }
}
