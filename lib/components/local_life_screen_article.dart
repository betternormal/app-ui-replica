import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LocalLifeScreenArticle extends StatelessWidget {
  const LocalLifeScreenArticle({
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    color: Color(0xFFeff1f3),
                    child: Text(
                      tag,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 10.0)),
                Text(
                  title,
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 10.0)),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        author,
                      style: TextStyle(
                        color: Colors.black54
                      ),
                    ),
                    Text(
                      '1시간전',
                      style: TextStyle(
                          color: Colors.black54
                      ),
                    ),
                  ],
                ),
          )
        ),
        Divider(
          thickness: 1.5,
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.smile,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 5.0,),
                    Text(
                      '공감하기',
                      style: TextStyle(
                          color: Colors.black54,
                        fontSize: 20.0

                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20.0,),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.comment,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 5.0,),
                    Text(
                      '댓글쓰기',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20.0

                      ),
                    ),
                  ],
                ),
              ],
            )
        ),
      ],
    );
  }
}
