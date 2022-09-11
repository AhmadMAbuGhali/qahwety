import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import 'checkout_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();

}

class _CartScreenState extends State<CartScreen> {
  int quntity =1;
  int indexnum =10;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          leading: Row(
            children: [
              SizedBox(
                width: 4.w,
              ),
              SvgPicture.asset(
                IconAssets.Wallet,
                height: 25.h,
                width: 25.w,
                color: ColorManager.white,
              ),
              SizedBox(
                width: 4.w,
              ),
              Text('65')
            ],
          ),
          title: Center(
            child: Text('Cart'),
          ),
        ),
        body: Container(
              color: ColorManager.gray,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: indexnum,
                  itemBuilder: (context, index) {
                    return  Slidable(
                      key: const ValueKey(0),
                      endActionPane: ActionPane(
                        motion: ScrollMotion(),
                        dismissible: DismissiblePane(onDismissed: (){},),
                        children: [
                          SlidableAction(
                            backgroundColor: Color(0xffF5F5F5),
                            icon: Icons.delete,
                            label: 'Delete',
                            onPressed: (BuildContext context) {
                              setState(() {
                                indexnum = indexnum-1;
                              });
                            },
                          )
                        ],
                      ),
                      child: Container(
                        color: ColorManager.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
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
                              SizedBox(width: 10.w,),
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
                                    style: TextStyle(fontSize: 14,color: ColorManager.primary),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  IconButton(onPressed: (){
                                    setState(() {
                                      quntity=quntity+1;
                                    });
                                  }, icon: SvgPicture.asset(
                                    IconAssets.Plus,
                                    height: 24.h,
                                    width: 24.w,
                                    color: ColorManager.primary,
                                  )),
                                   Text('${quntity}',style: TextStyle(color: ColorManager.black,fontSize: 15.sp),),
                                  IconButton(onPressed: (){
                                    setState(() {
                                      quntity=quntity-1;
                                    });
                                  }, icon: SvgPicture.asset(
                                    IconAssets.Minus,
                                    height: 24.h,
                                    width: 24.w,
                                    color: ColorManager.primary,
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  })),

        bottomSheet: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: double.infinity,
            color: ColorManager.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'TOTAL: ',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      '46.39 K.D',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorManager.primary),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(CheckoutScreen());
                  },
                  child: Container(
                    height: 44.h,
                    width: 130.w,
                    color: ColorManager.primary,
                    child: Center(
                      child: Text(
                        'Check out',
                        style: TextStyle(color: ColorManager.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
      ),
    );
  }
}
