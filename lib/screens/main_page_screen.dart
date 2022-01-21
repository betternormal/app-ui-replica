import 'package:carrot_clone/screens/home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'life_style_screen.dart';

class MainPageScreen extends StatefulWidget {
  @override
  _MainPageScreenState createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  var _pageIndex = 1;
  var _pages = [
    HomePageScreen(),
    LifeStyleScreen(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {

    BottomNavigationBarItem _bottomBarItem(String title, icon) {
      return BottomNavigationBarItem(
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          icon: icon,

      );
    }

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        centerTitle: false,
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 1.5,
        title: Text(
          '운서동',
          style: TextStyle(
              color: Colors.black87,
              fontSize: 25.0,
              fontWeight: FontWeight.w800),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
                Icons.search,
              size: 30.0,
            ),
            color: Colors.black,
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(
                Icons.menu,
                size: 35.0,
            ),
            color: Colors.black,
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.bell),
            color: Colors.black,
            onPressed: () => {},
          )
        ],
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
          _bottomBarItem(
              '홈',
              Icon(
                Icons.home,
                size: 25.0,
              )),
          _bottomBarItem('동네생활', Icon(FontAwesomeIcons.fileAlt)),
          _bottomBarItem('내 근처', Icon(FontAwesomeIcons.mapMarkerAlt)),
          _bottomBarItem(
              '채팅',
              Icon(
                FontAwesomeIcons.comments,
              )),
          _bottomBarItem(
              '나의 당근',
              Icon(
                FontAwesomeIcons.userCircle,
              )),
        ],
      ),

    );
  }
}
