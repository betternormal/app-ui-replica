import 'package:flutter/material.dart';
import 'package:carrot_clone/components/around_me_screen_article.dart';

class AroundMeScreenListItem extends StatelessWidget {
  const AroundMeScreenListItem({
    Key? key,
    required this.thumbnail,
    required this.title,
    required this.subtitle,
    required this.user,
    required this.publishDate,
    required this.readDuration,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String subtitle;
  final String user;
  final String publishDate;
  final String readDuration;




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 110,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                child: AroundMeScreenArticle(
                  title: title,
                  subtitle: subtitle,
                  user: user,
                  publishDate: publishDate,
                  readDuration: readDuration,
                ),
              ),
            ),
            SizedBox(
              height: 100.0,
              width: 100.0,
              child: AspectRatio(
                aspectRatio: 1.0,
                child: thumbnail,
              ),
            ),
          ],
        ),
      ),
    );
  }
}