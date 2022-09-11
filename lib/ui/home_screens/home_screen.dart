import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:qahwety/ui/home_screens/filter_screen.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import 'item_details.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isGrid = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
          child: SvgPicture.asset(
            IconAssets.Mark,
            height: 25.h,
            width: 25.w,
            color: ColorManager.white,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.off(FilterScreen());
            },
            child: SvgPicture.asset(
              IconAssets.Filter,
              height: 25.h,
              width: 25.w,
              color: ColorManager.white,
            ),
          ),
          SizedBox(
            width: 11.w,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageAssets.BackGround),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 44.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  SvgPicture.asset(
                    IconAssets.search,
                    height: 20.h,
                    width: 20.w,
                    color: ColorManager.primary,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 210.w,
                    height: 44.h,
                    child: Center(
                      child: TextField(
                        decoration: new InputDecoration.collapsed(
                          hintText: 'Search',
                          hintStyle: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isGrid = !isGrid;
                      });
                    },
                    child: SvgPicture.asset(
                      isGrid ? IconAssets.grid : IconAssets.List,
                      height: 16.h,
                      width: 16.w,
                      color: ColorManager.primary,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 300,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        child: Text('Popular'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        child: Text('Recent'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        child: Text('Number of orders'),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Container(
                                      color: ColorManager.primary,
                                      height: 50,
                                      width: double.infinity,
                                      child: Center(
                                        child: Text(
                                          'Cancel',
                                          style: TextStyle(
                                              color: ColorManager.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: SvgPicture.asset(
                      IconAssets.sort,
                      height: 28.h,
                      width: 28.w,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet<void>(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return Container(
                            height: 650,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        child: Text('Any'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        child: Text('Al Ahmadi'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        child: Text('Hawalli'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        child: Text('As Salimiyah'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        child: Text('Al Farwaniyah'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        child: Text('Sabah as Salim'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        child: Text('Al Fahahil'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        child: Text('Ar Rumaythiyah'),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        child: Text('Salwa'),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Container(
                                      color: ColorManager.primary,
                                      height: 50,
                                      width: double.infinity,
                                      child: Center(
                                        child: Text(
                                          'Cancel',
                                          style: TextStyle(
                                              color: ColorManager.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: SvgPicture.asset(
                      IconAssets.Location,
                      height: 28.h,
                      width: 28.w,
                      color: ColorManager.primary,
                    ),
                  ),
                ],
              ),
            ),
            isGrid ? buildListView(context) : buildGridView(context),
          ],
        ),
      ),
    ));
  }
}

Widget buildListView(BuildContext context) {
  return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(top: 16.h, bottom: 12.h),
          child: GestureDetector(
            onTap: (){
              Get.to(ItemDetails());
            },
            child: Card(
              child: Padding(
                padding: EdgeInsets.only(left: 12.w, top: 12.h, bottom: 12.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 12.h,
                    ),
                    Image.asset(
                      ImageAssets.cofeIcon,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cafe Bateel',
                            style: TextStyle(
                              color: Color(0xFF0D0D0D),
                              fontSize: 18,
                            ),
                          ),
                          Text('Cafe, Healthy Food, Breakfast',
                              style: TextStyle(
                                  wordSpacing: 5,
                                  color: Color(0xFF6F6C6C),
                                  fontSize: 13),
                              maxLines: 2,
                              softWrap: true),
                        ],
                      ),
                    ),
                    // SizedBox(height: 85.h,)
                  ],
                ),
              ),
            ),
          ),
        );
      });
}

Widget buildGridView(
  BuildContext context,
) {
  return GridView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 6,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,
          childAspectRatio: 445 / 450),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(top: 20.h, left: 10.w),
          child: GestureDetector(
            onTap: (){
              Get.to(ItemDetails());
            },
            child: Card(
              child: Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Image.asset(
                    ImageAssets.cofeIcon,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'Cafe Bateel',
                    style: TextStyle(
                      color: Color(0xFF0D0D0D),
                      fontSize: 18,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: Text('Cafe, Healthy Food, Breakfast',
                        style: TextStyle(
                            wordSpacing: 5,
                            color: Color(0xFF6F6C6C),
                            fontSize: 13),
                        maxLines: 2,
                        softWrap: true),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
