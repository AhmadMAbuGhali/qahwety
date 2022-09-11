import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qahwety/resources/color_manager.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Setting extends StatefulWidget {
  Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool notificaion = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
          title: Text('Settings'),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          height: 237,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 50.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Notificions',style: TextStyle(fontSize: 18),),
                      Transform.scale(
                        scale: 1.5,
                        child: Switch(
                            value: notificaion,
                            activeTrackColor: Color(0xFFC92026),
                            inactiveThumbColor: Colors.grey,
                            inactiveTrackColor: Colors.grey[400],
                            activeColor: Colors.white,
                            onChanged: (bool value) {
                              setState(() {
                                notificaion = value;
                              });
                            }),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 50.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Language',style: TextStyle(fontSize: 18),),
                      ToggleSwitch(
                        fontSize: 16.0,
                        initialLabelIndex: 1,
                        activeBgColor: [ColorManager.primary],
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.white,
                        inactiveFgColor: Colors.grey,
                        totalSwitches: 2,
                        minWidth: 70,
                        minHeight: 30,
                        cornerRadius: 20.0,
                        borderWidth: 2.0,
                        borderColor: [ColorManager.button_unused],
                        labels: ['EN', 'AR'],
                        onToggle: (index) {
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Terms of use',style: TextStyle(fontSize: 18),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded,size: 15,))
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Privacy Policy',style: TextStyle(fontSize: 18),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded,size: 15,))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
