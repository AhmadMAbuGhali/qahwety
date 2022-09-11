import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:qahwety/resources/assets_manager.dart';
import 'package:qahwety/ui/menu_screens/about_us.dart';
import 'package:qahwety/ui/menu_screens/contact_us.dart';
import 'package:qahwety/ui/menu_screens/gift_voucher.dart';
import 'package:qahwety/ui/menu_screens/notification_screen.dart';
import 'package:qahwety/ui/menu_screens/participating_coffees.dart';
import 'package:qahwety/ui/menu_screens/promoted_offers.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Menu'),
          centerTitle: true,
        ),
        backgroundColor: Color(0xFFF5F5F5),
        body:Column(
          children: [
            GestureDetector(
              onTap: (){
                Get.to(GiftVoucher());
              },
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(IconAssets.Gift),
                      SizedBox(width: 15,),
                      Text('Gift Voucher'),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){Get.to(PromotedOffer());},
              child: Container(
                color: Colors.white,

                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(IconAssets.coupon),
                      SizedBox(width: 15,),
                      Text('Promoted Offers'),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){Get.to(ParticipatingCoffees());},
              child: Container(
                color: Colors.white,

                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(IconAssets.multiple),
                      SizedBox(width: 15,),
                      Text('Participating Coffees'),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){Get.to(NotificationScreen());},
              child: Container(
                color: Colors.white,

                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(IconAssets.bell),
                      SizedBox(width: 15,),
                      Text('Notifications'),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){Get.to(ContactUs());},
              child: Container(
                color: Colors.white,

                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(IconAssets.email),
                      SizedBox(width: 15,),
                      Text('Contact Us'),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){Get.to(AboutUs());},
              child: Container(
                color: Colors.white,

                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(IconAssets.alert),
                      SizedBox(width: 15,),
                      Text('About Us'),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
