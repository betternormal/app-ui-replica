import 'package:carrot_clone/components/my_carrot_screen_list_tile.dart';
import 'package:carrot_clone/components/orange_button.dart';
import 'package:carrot_clone/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotScreen extends StatefulWidget {
  @override
  _MyCarrotScreenState createState() => _MyCarrotScreenState();
}

Widget _carrotScreenTop() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: <Widget>[
        ListTile(
            leading: CircleAvatar(
              child: Icon(FontAwesomeIcons.userAlt, color: kNearlyWhite,),
              radius: 30.0,
              backgroundColor: Colors.black54,
            ),
            title: Text(
              '유저 아이디',
              style:
              TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('운서동 #7712893'),
            trailing: Icon(FontAwesomeIcons.chevronRight)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              OrangeButton(icon: Icons.receipt_long, title: '판매내역',),
              OrangeButton(icon: Icons.shopping_bag, title: '구매내역',),
              OrangeButton(icon: FontAwesomeIcons.solidHeart, title: '관심목록',),
            ],
          ),
        )
      ],
    ),
  );
}

class _MyCarrotScreenState extends State<MyCarrotScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _carrotScreenTop(),
          kThickDivider,
          MyCarrotScreenListTile(
            leadingIcon: FontAwesomeIcons.mapMarkerAlt,
            title: '내 동네 설정',
          ),
          MyCarrotScreenListTile(
            leadingIcon: FontAwesomeIcons.crosshairs,
            title: '동네 인증하기',
          ),
          MyCarrotScreenListTile(
            leadingIcon: FontAwesomeIcons.tag,
            title: '키워드 알림',
          ),
          MyCarrotScreenListTile(
            leadingIcon: FontAwesomeIcons.slidersH,
            title: '관심 카테고리 설정',
          ),
          kThickDivider,

          MyCarrotScreenListTile(
            leadingIcon: FontAwesomeIcons.thLarge,
            title: '모아보기',
          ),
          MyCarrotScreenListTile(
            leadingIcon: FontAwesomeIcons.book,
            title: '당근가계부',
          ),
          MyCarrotScreenListTile(
            leadingIcon: FontAwesomeIcons.mapMarkerAlt,
            title: '받은 쿠폰함',
          ),
          MyCarrotScreenListTile(
            leadingIcon: FontAwesomeIcons.houseUser,
            title: '내 단골 가게',
          ),
          kThickDivider,
        ],
      ),
    );
  }
}



