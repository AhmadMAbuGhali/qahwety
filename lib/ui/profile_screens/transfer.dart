import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qahwety/resources/color_manager.dart';
import 'package:qahwety/ui/nav_bar.dart';
import 'package:qahwety/ui/profile_screens/transfer_successfully.dart';

class Transfer extends StatelessWidget {
  const Transfer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 200,
          child: Column(
            children: [
              Container(
                height: 82,
                child: Center(
                  child: Text(
                    'You can transfer balance from your wallet to ther people',
                    style: TextStyle(fontSize: 19,color: Colors.grey[500]),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(hintText: 'Amount'),
                ),
              ),
              Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(hintText: 'Email Address'),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: (){Get.to(TransferSuccessfully());},
          child: Container(
            height: 64,
            width: double.infinity,
            color: ColorManager.primary,
            child: Center(
                child: Text(
                  'Transfer',
                  style: TextStyle(color: ColorManager.white, fontSize: 16),
                )),
          ),
        ),
      ),
    );
  }
}
