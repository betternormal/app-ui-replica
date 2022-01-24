import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Widget> chatScreenActions() {
  return <Widget>[
    IconButton(
      icon: Icon(
        Icons.qr_code,
        size: 25.0,
      ),
      color: Colors.black,
      onPressed: () => {},
    ),
    IconButton(
      icon: Icon(FontAwesomeIcons.bell),
      color: Colors.black,
      onPressed: () => {},
    )
  ];
}

