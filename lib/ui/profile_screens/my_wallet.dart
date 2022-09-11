import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qahwety/resources/color_manager.dart';
import 'package:qahwety/ui/profile_screens/transfer.dart';

import 'transactions.dart';

class MyWallet extends StatefulWidget {
   MyWallet({Key? key}) : super(key: key);

  @override
  State<MyWallet> createState() => _MyWalletState();
}



class _MyWalletState extends State<MyWallet> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            title: Text('My Wallet'),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                height: 80,
                color: ColorManager.primary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Balance',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    SizedBox(height: 10.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('250',
                          style: TextStyle(fontSize: 22, color: Colors.white),),
                        SizedBox(width: 3.w,),
                        Text(
                          'K.W',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: TabBar(
                  labelColor: Colors.black,
                  indicatorColor: Color(0xFFC92026),
                  indicatorWeight: 2,
                  tabs: [Tab(text: "Transactions"), Tab(text: "Transfer")],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Transactions(),
                    Transfer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
