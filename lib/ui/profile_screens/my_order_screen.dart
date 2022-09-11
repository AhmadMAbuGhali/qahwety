import 'package:flutter/material.dart';
import 'package:qahwety/ui/cart_screens/complete_order.dart';
import 'package:qahwety/ui/profile_screens/open_order.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Order'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              child: TabBar(
                labelColor: Colors.black,
                indicatorColor: Color(0xFFC92026),
                indicatorWeight: 2,
                tabs: [Tab(text: "Open Order"), Tab(text: "Complete Order")],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  OpenOrder(),
                  CompleteOrder(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
