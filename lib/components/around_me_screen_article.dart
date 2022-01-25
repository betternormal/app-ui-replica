import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AroundMeScreenArticle extends StatelessWidget {
  const AroundMeScreenArticle({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.user,
    required this.publishDate,
    required this.readDuration,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String user;
  final String publishDate;
  final String readDuration;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 10.0)),
              Text(
                subtitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 15.0,
                  color: Colors.black87,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 10.0)),
              Row(
                children: [
                  Text(
                    user,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        FontAwesomeIcons.comment,
                        size: 20.0,
                        color: Colors.black54,
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        FontAwesomeIcons.heart,
                        size: 20.0,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

      ],
    );
  }
}
