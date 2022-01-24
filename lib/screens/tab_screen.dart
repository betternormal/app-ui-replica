import 'package:carrot_clone/components/no_result.dart';
import 'package:carrot_clone/components/sentence_tile.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

Future getSentencesList() async {
  await Future.delayed(const Duration(seconds: 1));
}

class _TabScreenState extends State<TabScreen> {
  List<SentenceTile> sentencesList = [
    SentenceTile(sentenceKor: '야호',sentenceEng: 'yahoo',),
    SentenceTile(sentenceKor: '야호',sentenceEng: 'yahoo',),
    SentenceTile(sentenceKor: '야호',sentenceEng: 'yahoo',),
    SentenceTile(sentenceKor: '야호',sentenceEng: 'yahoo',),
    SentenceTile(sentenceKor: '야호',sentenceEng: 'yahoo',),
    SentenceTile(sentenceKor: '야호',sentenceEng: 'yahoo',),
    SentenceTile(sentenceKor: '야호',sentenceEng: 'yahoo',),
    SentenceTile(sentenceKor: '야호',sentenceEng: 'yahoo',),
    SentenceTile(sentenceKor: '야호',sentenceEng: 'yahoo',),
    SentenceTile(sentenceKor: '야호',sentenceEng: 'yahoo',),
    SentenceTile(sentenceKor: '야호',sentenceEng: 'yahoo',),
    SentenceTile(sentenceKor: '야호',sentenceEng: 'yahoo',),
  ];



  Widget _allSentences() {
    return sentencesList.isNotEmpty
        ? ListView.separated(
      itemCount: sentencesList.length,
      padding: EdgeInsets.all(8.0),
      itemBuilder: (context, index) {
        return sentencesList[index];
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    )
        : noResult();
  }

  Widget _favoriteSentences() {
    return sentencesList.isNotEmpty
        ? ListView.separated(
      itemCount: sentencesList.length,
      padding: EdgeInsets.all(8.0),
      itemBuilder: (context, index) {
        return sentencesList[index];
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    )
        : noResult();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('list'),
          bottom: TabBar(
            tabs: const <Widget>[
              Tab(text: 'ABC',),
              Icon(Icons.favorite),
            ],
          ),
        ),
        body: FutureBuilder(
          future: getSentencesList(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return TabBarView(
                children: <Widget>[
                  _allSentences(),
                  _favoriteSentences(),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}