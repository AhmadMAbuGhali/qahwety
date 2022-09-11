import 'package:flutter/material.dart';
import 'package:qahwety/resources/assets_manager.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('About Us'),
          centerTitle: true,
        ),
        body: Column(
            children: [
              SizedBox(height: 50,),
            Image.asset(ImageAssets.colorLogo),
              SizedBox(height: 30,),

              Text(
          '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'
          s standard dummy text ever since the 1500s, when an
          unknown printer took a galley of type and scrambled it
          to make a type specimen book.''',textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}
