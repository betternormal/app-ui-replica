import 'package:carrot_clone/components/home_page_list_item.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {

  Future getSentencesList() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  List<HomePageListItem> postList = [
    HomePageListItem(
      thumbnail: Container(
        child: Image.network('http://image.hanssem.com/hsimg/gds/368/502/502858_A1.jpg?v=20210820095507'),
      ),
      title: '책상팝니다',
      subtitle: '운서동 · 1시간전',
      price: '10,000원',
      publishDate: 'Dec 28',
      readDuration: '5 mins',
    ),
    HomePageListItem(
      thumbnail: Container(
        child: Image.network('https://media.bunjang.co.kr/product/173950560_1_1640241919_w180.jpg'),
        // decoration: const BoxDecoration(color: Colors.blue),
      ),
      title: '미니행거 무료나눔',
      subtitle: '운서동 · 2분전',
      price: '20,000원',
      publishDate: 'Feb 26',
      readDuration: '12 mins',
    ),
    HomePageListItem(
      thumbnail: Container(
        child: Image.network('http://image.hanssem.com/hsimg/gds/368/502/502858_A1.jpg?v=20210820095507'),
        // decoration: const BoxDecoration(color: Colors.pink),
      ),
      title: '책상팝니다',
      subtitle: '운서동 · 1시간전',
      price: '30,000원',
      publishDate: 'Dec 28',
      readDuration: '5 mins',
    ),
    HomePageListItem(
      thumbnail: Container(
        child: Image.network('https://media.bunjang.co.kr/product/173950560_1_1640241919_w180.jpg'),
        // decoration: const BoxDecoration(color: Colors.blue),
      ),
      title: '미니행거 무료나눔',
      subtitle: '운서동 · 2분전',
      price: '50,000원',
      publishDate: 'Feb 26',
      readDuration: '12 mins',
    ),
    HomePageListItem(
      thumbnail: Container(
        child: Image.network('http://image.hanssem.com/hsimg/gds/368/502/502858_A1.jpg?v=20210820095507'),
      ),
      title: '책상팝니다',
      subtitle: '운서동 · 1시간전',
      price: '20,000원',
      publishDate: 'Dec 28',
      readDuration: '5 mins',
    ),
    HomePageListItem(
      thumbnail: Container(
        child: Image.network('https://media.bunjang.co.kr/product/173950560_1_1640241919_w180.jpg'),
      ),
      title: '미니행거 무료나눔',
      subtitle: '운서동 · 2분전',
      price: '30,000원',
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
            return ListView.separated(
              itemCount: postList.length,
              padding: EdgeInsets.all(8.0),
              itemBuilder: (context, index) {
                return postList[index];
              },
              separatorBuilder: (context, index) {
                return const Divider(
                );
              },
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
            Icons.add,
            size: 40.0,
        ),
      ),
    );
  }
}




