import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
 final Function() onTap;
 final String Lable;
  double? width;
  final Color color;
   Button({
    Key? key,
     required this.onTap, required this.Lable,this.width,required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap
      ,
      child: Container(
        width: width,
        height: 50.h,
        color: color,
        child: Center(child: Text(Lable,style: TextStyle(color: Colors.white,fontSize: 16),)),
      ),
    );
  }
}