import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostTile extends StatefulWidget {
  final String sentenceKor;
  final String sentenceEng;
  PostTile({required this.sentenceKor, required this.sentenceEng});

  @override
  State<PostTile> createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {
  late bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: ListTile(
        leading: SizedBox(
            height: 50.0,
            width: 50.0, // fixed width and height
            child: Image.network('http://th4.tmon.kr/thumbs/image/e18/58f/a6f/e7f5c45b3_700x700_95_FIT.jpg')
        ),
        title: Text(widget.sentenceKor),
        subtitle: Text(widget.sentenceEng),
        trailing: GestureDetector(
          onTap: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
          child: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : null,
            semanticLabel: isFavorite ? 'remove from favorite' : 'favorite',
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
