import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Splash extends StatelessWidget {
  static const id = '/splash';

  @override
  Widget build(BuildContext context) {
    bool lightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Scaffold(
      backgroundColor:
      lightMode ? const Color(0xffff723a) : const Color(0xffff723a),
      body: Container(
        child: Center(child:
          Icon(
            FontAwesomeIcons.carrot,
            size: 130.0,
          )
        ),
      )
    );
  }
}

// Icon(FontAwesomeIcons.bell)