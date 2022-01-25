import 'package:carrot_clone/components/image_icon_button.dart';
import 'package:carrot_clone/components/no_result.dart';
import 'package:carrot_clone/components/sentence_tile.dart';
import 'package:carrot_clone/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:carrot_clone/components/around_me_screen_list_item.dart';
import 'package:carrot_clone/components/around_me_screen_article.dart';

class AroundMeScreen extends StatefulWidget {
  @override
  _AroundMeScreenState createState() => _AroundMeScreenState();
}

Widget _searchBar() {
  return const Padding(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 16),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20.0),
        filled: true,
        fillColor: Color(0xFFf0f0f3),
        prefixIcon: Icon(
          Icons.search,
        ),
        border: InputBorder.none,
        hintText: '운서동 주변 가게를 찾아보세요',
      ),
    ),
  );
}

Widget _buildImageIconButton() {
  return Padding(
    padding: const EdgeInsets.only(
        top: 20, bottom: 20), // only()를 이용하면 상하좌우중 원하는곳만 패딩을 적용할 수 있다
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              // UI를 완성한뒤 해당 위젯을 gestureDetector로 감싸서 onTap함수를 정의한다
              onTap: () {
                print('클릭');
              },
              child: ImageIconButton(
                assetPath: 'assets/coupon.png',
                title: '쿠폰북',
              ),
            ),
            ImageIconButton(
              assetPath: 'assets/alba.png',
              title: '알바',
            ),
            ImageIconButton(
              assetPath: 'assets/fruit.png',
              title: '농수산물',
            ),
            ImageIconButton(
              assetPath: 'assets/car.png',
              title: '중고차',
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageIconButton(
              assetPath: 'assets/book.png',
              title: '과외/클래스',
            ),
            ImageIconButton(
              assetPath: 'assets/building.png',
              title: '부동산',
            ),
            ImageIconButton(
              assetPath: 'assets/laundry.png',
              title: '생활서비스',
            ),
            Opacity(
              // 해당 요소를 지우면 3개의 요소를 evenly하게 배치하기 때문에 정렬이 깨지게된다. 그래서 요소는 남겨두고 보이지 않게 한다
              opacity: 0,
              child: ImageIconButton(
                assetPath: 'assets/building.png',
                title: '부동산',
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _tagBar() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            TagItem(tagTitle: '알바'),
            TagItem(tagTitle: '오피스텔'),
            TagItem(tagTitle: '중고차'),
            TagItem(tagTitle: '쌀'),
            TagItem(tagTitle: '부동산'),
            TagItem(tagTitle: '이사'),
            TagItem(tagTitle: '네일'),
            TagItem(tagTitle: '헬스장'),
          ],
        ),
      ),
    ),
  );
}


class TagItem extends StatelessWidget {
  final String tagTitle;
  TagItem({required this.tagTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 1,
              color: Color(0xFFd6d8df),
            ),
            borderRadius: BorderRadius.circular(25)),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Text(
          tagTitle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 15.0,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}

TabBar get _tabBar => TabBar(
  unselectedLabelColor: Colors.grey,
  indicatorWeight: 2,
  tabs: [
    Tab(child: Text('동네 맛집', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, ),),),
    Tab(child: Text('겨울간식', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, ),),),
    Visibility(
      visible: false,
      child: Tab(child: Text('겨울간식'),),
    ),
  ],
);

Future getDataList() async {
  await Future.delayed(const Duration(seconds: 1));
}

List<AroundMeScreenListItem> postList = [
  AroundMeScreenListItem(
    thumbnail: Container(
      child: Image.network('https://s3-ap-northeast-1.amazonaws.com/dcreviewsresized/300_300_20210118093147_photo4_9c5285359241.jpg'),
    ),
    title: '버거앤프라이즈 영종도점',
    subtitle: '우연히 들어가서 먹었는데 버거 진짜 맛있어요 감튀 맛나요',
    user: '운서동 · 1시간전',
    publishDate: 'Dec 28',
    readDuration: '5 mins',
  ),
  AroundMeScreenListItem(
    thumbnail: Container(
      child: Image.network('https://s3-ap-northeast-1.amazonaws.com/dcreviewsresized/300_300_20210118093147_photo4_9c5285359241.jpg'),
      // decoration: const BoxDecoration(color: Colors.blue),
    ),
    title: '버거앤프라이즈 영종도점',
    subtitle: '우연히 들어가서 먹었는데 버거 진짜 맛있어요 감튀 맛나요',
    user: '운서동 · 1시간전',
    publishDate: 'Dec 28',
    readDuration: '5 mins',
  ),
  AroundMeScreenListItem(
    thumbnail: Container(
      child: Image.network('https://s3-ap-northeast-1.amazonaws.com/dcreviewsresized/300_300_20210118093147_photo4_9c5285359241.jpg'),
      // decoration: const BoxDecoration(color: Colors.pink),
    ),
    title: '버거앤프라이즈 영종도점',
    subtitle: '우연히 들어가서 먹었는데 버거 진짜 맛있어요 감튀 맛나요',
    user: '운서동 · 1시간전',
    publishDate: 'Dec 28',
    readDuration: '5 mins',
  ),
  AroundMeScreenListItem(
    thumbnail: Container(
      child: Image.network('https://s3-ap-northeast-1.amazonaws.com/dcreviewsresized/300_300_20210118093147_photo4_9c5285359241.jpg'),
      // decoration: const BoxDecoration(color: Colors.blue),
    ),
    title: '버거앤프라이즈 영종도점',
    subtitle: '우연히 들어가서 먹었는데 버거 진짜 맛있어요 감튀 맛나요',
    user: '운서동 · 1시간전',
    publishDate: 'Dec 28',
    readDuration: '5 mins',
  ),
  AroundMeScreenListItem(
    thumbnail: Container(
      child: Image.network('https://s3-ap-northeast-1.amazonaws.com/dcreviewsresized/300_300_20210118093147_photo4_9c5285359241.jpg'),
    ),
    title: '버거앤프라이즈 영종도점',
    subtitle: '우연히 들어가서 먹었는데 버거 진짜 맛있어요 감튀 맛나요',
    user: '운서동 · 1시간전',
    publishDate: 'Dec 28',
    readDuration: '5 mins',
  ),
  AroundMeScreenListItem(
    thumbnail: Container(
      child: Image.network('https://s3-ap-northeast-1.amazonaws.com/dcreviewsresized/300_300_20210118093147_photo4_9c5285359241.jpg'),
    ),
    title: '버거앤프라이즈 영종도점',
    subtitle: '우연히 들어가서 먹었는데 버거 진짜 맛있어요 감튀도 맛나요',
    user: '운서동 · 1시간전',
    publishDate: 'Dec 28',
    readDuration: '5 mins',
  ),
];

Widget _goodPlaces() {
  return postList.isNotEmpty
      ? ListView.separated(
    itemCount: postList.length,
    padding: EdgeInsets.all(8.0),
    itemBuilder: (context, index) {
      return postList[index];
    },
    separatorBuilder: (context, index) {
      return const Divider();
    },
  )
      : noResult();
}

Widget _winterSnacks() {
  return postList.isNotEmpty
      ? ListView.separated(
    itemCount: postList.length,
    padding: EdgeInsets.all(8.0),
    itemBuilder: (context, index) {
      return postList[index];
    },
    separatorBuilder: (context, index) {
      return const Divider();
    },
  )
      : noResult();
}

Widget _bottomTab() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0, bottom: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('이웃과 직접 만드는 동네지도', style: kAppBarHeaderText,),
            SizedBox(width: 10.0,),
            CircleAvatar(
              radius: 13.0,
              backgroundColor: Color(0xFFff723a),
              child: Text('N', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
      SizedBox(
          height: 48,
          child: AppBar(
            elevation: 1.0,
            bottom: PreferredSize(
              preferredSize: _tabBar.preferredSize,
              child: ColoredBox(
                color: Color(0xFFf9f9f9),
                child: _tabBar,
              ),
            ),
          )
      ),
      SizedBox(
        height: 400.0,
        child: FutureBuilder(
          future: getDataList(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 50.0,)
                  ,CircularProgressIndicator(),
                ],
              );
            } else {
              return TabBarView(
                children: <Widget>[
                  _goodPlaces(),
                  _winterSnacks(),
                  Container(),
                ],
              );
            }
          },
        ),
      )
    ],
  );
}


class _AroundMeScreenState extends State<AroundMeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: ListView(
        children: <Widget>[
          _searchBar(),
          _tagBar(),
          Divider(),
          _buildImageIconButton(),
          kThickDivider,
          _bottomTab(),
        ],
      ),
    );
  }
}
