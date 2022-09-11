import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qahwety/resources/color_manager.dart';

import '../../resources/assets_manager.dart';

class OpenOrder extends StatelessWidget {
  const OpenOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          itemBuilder: (context,index){
        return Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                color: ColorManager.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Cafe Bateel'),
                    Text('12 Feb 2018')
                  ],
                ) ,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16, horizontal: 5),
                child: Container(
                  color: ColorManager.white,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            ImageAssets.cupCart,
                            width: 64.w,
                            height: 64.h,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Wiener Schnitze',
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            'Cafe Bateel',
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            '14 K.D',
                            style: TextStyle(
                                fontSize: 14,
                                color: ColorManager.primary),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                    ColorManager.button_unused)),
                            child: Text('QTY 1'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
