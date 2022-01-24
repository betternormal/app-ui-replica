import 'package:carrot_clone/components/around_me_screen_actions.dart';
import 'package:carrot_clone/components/chat_screen_actions.dart';
import 'package:carrot_clone/components/home_screen_actions.dart';
import 'package:carrot_clone/components/local_life_screen_actions.dart';
import 'package:carrot_clone/components/my_carrot_screen_actions.dart';
import 'package:carrot_clone/screens/chat_list_screen.dart';
import 'package:carrot_clone/screens/home_page_screen.dart';
import 'package:carrot_clone/screens/my_carrot_screen.dart';
import 'package:carrot_clone/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carrot_clone/screens/around_me_screen.dart';
import 'package:carrot_clone/screens/local_life_screen.dart';

class MainPageScreen extends StatefulWidget {
  @override
  _MainPageScreenState createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  var _pageIndex = 2;

  final List<String> _appBarTitles = [
    '운서동',
    '운서동',
    '내 근처',
    '채팅',
    '나의 당근',
  ];

  final List _appBarActions = [
    homeScreenActions(),
    LocalLifeScreenActions(),
    AroundMeScreenActions(),
    chatScreenActions(),
    myCarrotScreenActions(),
  ];

  final List<Widget> _pages = [
    HomePageScreen(),
    LocalLifeScreen(),
    AroundMeScreen(),
    ChatListScreen(),
    MyCarrotScreen(),
  ];

  BottomNavigationBarItem _bottomBarItem(String title, icon) {
    return BottomNavigationBarItem(
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      icon: icon,
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        centerTitle: false,
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 1.5,
        title: Text(
          _appBarTitles[_pageIndex],
          style: kAppBarHeaderText,
        ),
        actions: _appBarActions[_pageIndex],
      ),
      body: _pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        currentIndex: _pageIndex,
        items: <BottomNavigationBarItem>[
          _bottomBarItem('홈',Icon(Icons.home,size: 25.0,)),
          _bottomBarItem('동네생활', Icon(FontAwesomeIcons.fileAlt)),
          _bottomBarItem('내 근처', Icon(FontAwesomeIcons.mapMarkerAlt)),
          _bottomBarItem('채팅', Icon(FontAwesomeIcons.comments,)),
          _bottomBarItem('나의 당근',Icon(FontAwesomeIcons.userCircle,)),
        ],
      ),

    );
  }
}
