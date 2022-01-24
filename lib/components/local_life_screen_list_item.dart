import 'package:carrot_clone/components/local_life_screen_article.dart';
import 'package:flutter/material.dart';

import 'home_screen_article.dart';

class LocalLifeScreenListItem extends StatelessWidget {
  const LocalLifeScreenListItem({
    Key? key,
    required this.title,
    required this.tag,
    required this.author,
    required this.publishDate,
    required this.readDuration,
  }) : super(key: key);

  final String title;
  final String tag;
  final String author;
  final String publishDate;
  final String readDuration;




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 250,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: LocalLifeScreenArticle(
                title: title,
                tag: tag,
                author: author,
                publishDate: publishDate,
                readDuration: readDuration,
              ),
            )
          ],
        ),
      ),
    );
  }
}