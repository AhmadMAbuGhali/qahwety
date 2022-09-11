import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qahwety/resources/assets_manager.dart';
import 'package:qahwety/resources/color_manager.dart';

import '../nav_bar.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFF5F5F5),
          body: Stack(
            children: [
              Positioned(
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    ImageAssets.Map,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                top: 0,
              ),
              Positioned(
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 100),
                    Center(
                      child: Text(
                        'Contact Us',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
                top: 15,
                left: 16,
              ),
              Positioned(
                child: Container(
                  width: 160,
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorManager.button_unused)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phone',
                          style: TextStyle(color: ColorManager.white),
                        ),
                        Text(
                          '+00965000000',
                          style: TextStyle(color: ColorManager.white),
                        ),
                      ],
                    ),
                  ),
                ),
                top: 185,
                left: 20,
              ),
              Positioned(
                child: Container(
                  width: 160,
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorManager.button_unused)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(color: ColorManager.white),
                        ),
                        Text(
                          'info@qah.com',
                          style: TextStyle(color: ColorManager.white),
                        ),
                      ],
                    ),
                  ),
                ),
                top: 185,
                left: 200,
              ),
              Positioned(
                child: Material(
                  elevation: 1,
                  child: Container(
                    width: 335,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        SizedBox(height: 23,),
                        Text('Get in Touch',style: TextStyle(fontSize: 16),),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            decoration: new InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: ColorManager.button_unused),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: ColorManager.button_unused),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: ColorManager.button_unused),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: ColorManager.button_unused),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: ColorManager.button_unused),
                                ),
                                contentPadding:
                                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                hintText: "Name"),



                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            decoration: new InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: ColorManager.button_unused),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: ColorManager.button_unused),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: ColorManager.button_unused),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: ColorManager.button_unused),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: ColorManager.button_unused),
                                ),
                                contentPadding:
                                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                hintText: "Email Address"),



                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            maxLines: null,
                            minLines: 4,
                            keyboardType: TextInputType.multiline,
                            decoration: new InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: ColorManager.button_unused),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: ColorManager.button_unused),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: ColorManager.button_unused),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: ColorManager.button_unused),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 1,
                                      color: ColorManager.button_unused),
                                ),
                                contentPadding:
                                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                hintText: "Message"),



                          ),
                        ),
                        SizedBox(height: 80,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: (){Get.off(NavBar()); },
                            child: Container(
                              height: 64,
                              width: double.infinity,
                              color: ColorManager.primary,
                              child: Center(
                                  child: Text(
                                    'Sends',
                                    style: TextStyle(color: ColorManager.white, fontSize: 16),
                                  )),
                            ),
                          ),
                        ),



                      ],
                    ),
                  ),
                ),
                top: 290,
                left: 25,

              )
            ],
          )),
    );
  }
}
