import 'package:carrot_clone/components/life_style_screen_article.dart';
import 'package:flutter/material.dart';

import 'home_page_article.dart';

class LifeStyleScreenListItem extends StatelessWidget {
  const LifeStyleScreenListItem({
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
              child: LifeStyleScreenArticle(
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