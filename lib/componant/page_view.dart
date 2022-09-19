import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qahwety/resources/styles_manager.dart';

class ViewPage extends StatelessWidget {
  ViewPage(
      {required this.img, required this.name, required this.subname, Key? key})
      : super(key: key);

  late String img;
  late String name;
  late String subname;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Image.asset('$img'),
        const SizedBox(
          height: 50,
        ),
        Column(
          children: [
            Text(
              '$name',
              style:TextStyle(fontSize: 22,color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$subname',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16,color: Colors.grey),
              ),

          ],
        )
      ],
    );
  }
}
