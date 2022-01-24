import 'package:carrot_clone/components/image_icon_button.dart';
import 'package:carrot_clone/utilities/constants.dart';
import 'package:flutter/material.dart';

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
              child: ImageIconButton(assetPath: 'assets/coupon.png', title: '쿠폰북',),
            ),
            ImageIconButton(assetPath: 'assets/alba.png', title: '알바',),
            ImageIconButton(assetPath: 'assets/fruit.png', title: '농수산물',),
            ImageIconButton(assetPath: 'assets/car.png', title: '중고차',),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageIconButton(assetPath: 'assets/book.png', title: '과외/클래스',),
            ImageIconButton(assetPath: 'assets/building.png', title: '부동산',),
            ImageIconButton(assetPath: 'assets/laundry.png', title: '생활서비스',),
            Opacity(
              // 해당 요소를 지우면 3개의 요소를 evenly하게 배치하기 때문에 정렬이 깨지게된다. 그래서 요소는 남겨두고 보이지 않게 한다
              opacity: 0,
              child: ImageIconButton(assetPath: 'assets/building.png', title: '부동산',),
            ),
          ],
        ),
      ],
    ),
  );
}

class TagBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
            borderRadius: BorderRadius.circular(25)
        ),
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



class _AroundMeScreenState extends State<AroundMeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _searchBar(),
        TagBar(),
        Divider(),
        _buildImageIconButton(),
        kThickDivider,
      ],
    );
  }
}


