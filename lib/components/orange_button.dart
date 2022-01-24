import 'package:carrot_clone/utilities/constants.dart';
import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  var icon;
  String title;

  OrangeButton({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: [
        CircleAvatar(
          child: Icon(
            icon,
            size: 35.0,
            color: Color(0xFFfe975f),
          ),
          backgroundColor: Color(0xFFffe6d6),
          radius: 35.0,

        ),
        SizedBox(height: 10.0,),
        Text(
          title,
          style: kText15,
        ),
      ],
    ),);
  }
}
