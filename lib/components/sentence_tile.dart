import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SentenceTile extends StatefulWidget {
  final String sentenceKor;
  final String sentenceEng;
  SentenceTile({required this.sentenceKor, required this.sentenceEng});

  @override
  State<SentenceTile> createState() => _SentenceTileState();
}

class _SentenceTileState extends State<SentenceTile> {
  late bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(child: Icon(FontAwesomeIcons.google)),
        ],
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
    );
  }
}
