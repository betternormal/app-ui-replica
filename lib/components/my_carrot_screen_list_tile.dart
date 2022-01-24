import 'package:carrot_clone/utilities/constants.dart';
import 'package:flutter/material.dart';

class MyCarrotScreenListTile extends StatelessWidget {
  late var leadingIcon;
  late String title;

  MyCarrotScreenListTile({required this.leadingIcon, required this.title });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(
          leadingIcon,
          size: 30.0,
        ),
        title: Text(
          title,
          style: kText20,
        ),
      ),
    );
  }
}