import 'package:flutter/material.dart';

class SelectPage extends StatelessWidget {
  SelectPage(
      {required bool selected,  double horizontalMargin=0, Key? key})
      : _selected = selected,
        _horizontalMargin = horizontalMargin,
        super(key: key);

  final bool _selected;
  final double _horizontalMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 9,
      height: 10,
      margin: EdgeInsets.symmetric(horizontal: _horizontalMargin),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.all(Radius.circular(2)),
        borderRadius: BorderRadius.circular(20),
        color: _selected ? Color(0xFFC92026) : Color(0xFFF8E4D2),
      ),
    );
  }
}





