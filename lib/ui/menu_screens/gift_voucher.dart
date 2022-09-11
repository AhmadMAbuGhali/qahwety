import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qahwety/resources/assets_manager.dart';

import '../../resources/color_manager.dart';
import 'package_screen.dart';

class GiftVoucher extends StatelessWidget {
  const GiftVoucher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
          elevation: 1,
          title: Text('Gift Voucher'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              height: 150,
              color: ColorManager.primary,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'How it works',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text.',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 60.h,
              color: Colors.white,
              child: Center(
                child: Text(
                  'Packages',
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              height: 350,
              width: 353,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 2 / 2.5,
                      crossAxisSpacing: 2),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: (){
                       Get.to(PackageScreen());
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 150,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              fit: StackFit.loose,
                              children: [
                                Positioned.fill(
                                  top: 20,
                                  child: Container(
                                    color: ColorManager.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(

                                        children: [
                                          SizedBox(height: 35,),
                                          Text('20 K.D',style: TextStyle(color: ColorManager.primary),),
                                          SizedBox(height: 10,),

                                          Text('STANDARD'),

                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: ClipRRect(
                                    child: Image.asset(ImageAssets.cockade),
                                  ),
                                  bottom: 80,
                                )
                              ],
                            )),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
