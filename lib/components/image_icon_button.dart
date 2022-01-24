import 'package:flutter/material.dart';

class ImageIconButton extends StatelessWidget {
  late String assetPath;
  late String title;

  ImageIconButton({required this.assetPath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 50.0,
          width: 50.0,
          child: Image.asset(
            assetPath,
          ),
        ),
        SizedBox(height: 15.0,),
        Text(title)
      ],
    );
  }
}