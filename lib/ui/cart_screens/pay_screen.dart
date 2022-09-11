import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qahwety/resources/assets_manager.dart';
import 'package:qahwety/resources/color_manager.dart';
import 'package:qahwety/ui/nav_bar.dart';

class PayScreen extends StatelessWidget {
  const PayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 75,),
            Image.asset(
              ImageAssets.pay,
              width: 72,
              height: 72,
            ),
            SizedBox(height: 30,),
            Text(
              'Payment Successfully',
              style: TextStyle(color: ColorManager.black, fontSize: 20),
            ),
            SizedBox(height: 15,),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              textAlign: TextAlign.center,
              style: TextStyle(color: ColorManager.gray, fontSize: 16),
            ),
          ],
        ),
      ),
          bottomSheet: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){Get.off(NavBar()); },
              child: Container(
                height: 64,
                width: double.infinity,
                color: ColorManager.primary,
                child: Center(
                    child: Text(
                      'Done',
                      style: TextStyle(color: ColorManager.white, fontSize: 16),
                    )),
              ),
            ),
          ),
    )
    );
  }
}
