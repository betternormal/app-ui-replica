import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Widget> AroundMeScreenActions() {
  return <Widget>[
    IconButton(
      icon: Icon(
        Icons.search,
        size: 30.0,
      ),
      color: Colors.black,
      onPressed: () => {},
    ),
    IconButton(
      icon: Icon(
        FontAwesomeIcons.edit,
        size: 20.0,
      ),
      color: Colors.black,
      onPressed: () => {},
    ),
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

