import 'package:carrot_clone/components/life_style_screen_list_item.dart';
import 'package:flutter/material.dart';
import 'package:carrot_clone/components/post_tile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LifeStyleScreen extends StatefulWidget {

  @override
  _LifeStyleScreenState createState() => _LifeStyleScreenState();
}

class _LifeStyleScreenState extends State<LifeStyleScreen> {

  Future getSentencesList() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  List<PostTile> sentencesList = [
    PostTile(sentenceKor: '야호', sentenceEng: 'yahoo',),
    PostTile(sentenceKor: '야호2', sentenceEng: 'yahoo2',),
    PostTile(sentenceKor: '야호3', sentenceEng: 'yahoo3',),
    PostTile(sentenceKor: '야호4', sentenceEng: 'yahoo4',),
    PostTile(sentenceKor: '야호5', sentenceEng: 'yahoo5',),
    PostTile(sentenceKor: '야호', sentenceEng: 'yahoo',),
    PostTile(sentenceKor: '야호2', sentenceEng: 'yahoo2',),
    PostTile(sentenceKor: '야호3', sentenceEng: 'yahoo3',),
    PostTile(sentenceKor: '야호4', sentenceEng: 'yahoo4',),
    PostTile(sentenceKor: '야호5', sentenceEng: 'yahoo5',),
    PostTile(sentenceKor: '야호', sentenceEng: 'yahoo',),
  ];

  List<LifeStyleScreenListItem> postList = [
    LifeStyleScreenListItem(
      title: '1인 대관 헬스장 정보 있나요?',
      tag: '건강',
      author: 'Flutter',
      publishDate: 'Feb 26',
      readDuration: '12 mins',
    ),
    LifeStyleScreenListItem(
      title: '오늘 눈오나요',
      tag: '동네질문',
      author: 'Dash',
      publishDate: 'Dec 28',
      readDuration: '5 mins',
    ),
    LifeStyleScreenListItem(
      title: '젤네일 제거 해주실분',
      tag: '해주세요',
      author: 'Dash',
      publishDate: 'Dec 28',
      readDuration: '5 mins',
    ),
    LifeStyleScreenListItem(
      title: '미니행거 무료나눔',
      tag: '해주세요',
      author: 'Flutter',
      publishDate: 'Feb 26',
      readDuration: '12 mins',
    ),
    LifeStyleScreenListItem(
      title: '책상팝니다',
      tag: '해주세요',
      author: 'Dash',
      publishDate: 'Dec 28',
      readDuration: '5 mins',
    ),
    LifeStyleScreenListItem(
      title: '미니행거 무료나눔',
      tag: '해주세요',
      author: 'Flutter',
      publishDate: 'Feb 26',
      readDuration: '12 mins',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getSentencesList(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(),);
          } else {
            return Column(
              children: [
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        color: Color(0xFFeff1f3),
                        child: Text(
                          'tag',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.separated(
                    shrinkWrap:true,
                    itemCount: postList.length,
                    itemBuilder: (context, index) {
                      return postList[index];
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        thickness: 10,
                        endIndent: 0,
                        color: Color(0xFFeff1f3),
                      );
                    },
                  ),
                ),
              ],
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFff723a),
        onPressed: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        tooltip: 'Increment',
        child: const Icon(
          FontAwesomeIcons.pencilAlt,
          size: 20.0,
        ),
      ),
    );
  }
}




