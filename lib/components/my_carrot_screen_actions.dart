import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Widget> myCarrotScreenActions() {
  return <Widget>[
    IconButton(
      icon: Icon(
        FontAwesomeIcons.cog,
        size: 25.0,
      ),
      color: Colors.black,
      onPressed: () => {},
    ),
  ];
}

