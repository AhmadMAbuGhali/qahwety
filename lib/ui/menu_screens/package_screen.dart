import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

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
  bool _value = false;
  bool _value1 = false;
  int index= 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Package'),
          centerTitle: true,
        ),
        backgroundColor: Color(0xFFF5F5F5),
        body: Container(
          color: ColorManager.white,
          height: type == 'Gift' ? 450 : 400,
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
                                    border:
                                        Border.all(color: Color(0xFFF5F5F5)),
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
              // RadioListTile(
              //   title: Text("My Wallet"),
              //   value: "My Wallet",
              //   activeColor: ColorManager.primary,
              //   groupValue: type,
              //   onChanged: (value) {
              //     setState(() {
              //       type = value.toString();
              //     });
              //   },
              // ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [

                    RoundCheckBox(
                      isChecked:! _value,
borderColor: ColorManager.button_unused,
                      onTap: (selected) {


                        setState((){
                          _value = false ;

                          type = 'My Wallet';
                        });

                      },
                      size: 25,
                      checkedWidget: Icon(
                        Icons.check,
                        color: ColorManager.white,
                      ),
                      checkedColor: ColorManager.primary,
                      uncheckedColor: Colors.white,
                      animationDuration: Duration(milliseconds: 50),

                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Text('My Wallet')
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [

                    RoundCheckBox(
                      borderColor: ColorManager.button_unused,

                      size: 25,
                      isChecked: _value,
                      onTap: (selected) {
                          setState((){
                            _value= true;


                            type = 'Gift';
                          });


                      },
                      checkedWidget: Icon(
                        Icons.check,
                        color: ColorManager.white,
                      ),
                      checkedColor: ColorManager.primary,
                      uncheckedColor: Colors.white,
                      animationDuration: Duration(milliseconds: 50),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Text('Gift')
                  ],
                ),
              ),
              // RadioListTile(
              //   title: Text("Gift"),
              //   value: "Gift",
              //   groupValue: type,
              //   activeColor: ColorManager.primary,
              //   onChanged: (value) {
              //     setState(() {
              //       type = value.toString();
              //     });
              //   },
              // ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Visibility(
                  visible: type == 'Gift',
                  child: Container(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email Address',
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Color(0xFFE2E2E2))),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Color(0xFFE2E2E2))),
                      ),
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
            onTap: () {
              Get.off(NavBar());
            },
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
