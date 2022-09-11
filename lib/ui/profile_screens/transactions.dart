import 'package:flutter/material.dart';
import 'package:qahwety/resources/color_manager.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) {
            return Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Transfer balance',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                        Text(
                          '19 Sep 2018',
                          style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),

                    Text(
                      '17 K.D',
                      style: TextStyle(fontSize: 17, color: ColorManager.primary),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
