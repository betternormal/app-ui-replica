import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Widget> LocalLifeScreenActions() {
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
        Icons.menu_open,
        size: 35.0,
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

