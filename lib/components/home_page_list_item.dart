import 'package:flutter/material.dart';

import 'home_page_article.dart';

class HomePageListItem extends StatelessWidget {
  const HomePageListItem({
    Key? key,
    required this.thumbnail,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.publishDate,
    required this.readDuration,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String subtitle;
  final String price;
  final String publishDate;
  final String readDuration;




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 150,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1.0,
              child: thumbnail,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                child: HomePageArticle(
                  title: title,
                  subtitle: subtitle,
                  price: price,
                  publishDate: publishDate,
                  readDuration: readDuration,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}