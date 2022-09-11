import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../nav_bar.dart';

class PackageScreen extends StatefulWidget {
  const PackageScreen({Key? key}) : super(key: key);

  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  String type = "My Wallet";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Package'),
          centerTitle: true,
        ),
        backgroundColor: Color(0xFFF5F5F5),
        body: Container(
          color: ColorManager.white,
          height: type=='Gift'?450:400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                        height: 132,
                        width: 106,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          fit: StackFit.loose,
                          children: [
                            Positioned.fill(
                              top: 20,
                              child: Material(
                                elevation: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ColorManager.white,
                                    border: Border.all(color: Color(0xFFF5F5F5)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 35,
                                        ),
                                        Text(
                                          '20 K.D',
                                          style: TextStyle(
                                              color: ColorManager.primary),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('STANDARD'),
                                      ],
                                    ),
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
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              RadioListTile(
                title: Text("My Wallet"),
                value: "My Wallet",
                activeColor:ColorManager.primary,
                groupValue: type,
                onChanged: (value) {
                  setState(() {
                    type = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text("Gift"),
                value: "Gift",
                groupValue: type,
                activeColor:ColorManager.primary,
                onChanged: (value) {
                  setState(() {
                    type = value.toString();
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Visibility(
                visible: type=='Gift',
                  child:Container(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Email Address'),
                    ),
                  ),
                ),
              )
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
      ),
    );
  }
}
