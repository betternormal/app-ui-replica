import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatListScreen extends StatefulWidget {

  @override
  _ChatListScreenState createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {

  Future getChatList() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  List<ListTile> chatList = [
    ListTile(
      leading: CircleAvatar(child: Icon(FontAwesomeIcons.userAlt),),
      title: Text('아이디 1'),
      subtitle: Text('마지막 채팅내용'),
      trailing: SizedBox(
        height: 50.0,
        width: 50.0,
        child: Image.network('http://image.hanssem.com/hsimg/gds/368/502/502858_A1.jpg?v=20210820095507'),
      ),
    ),
    ListTile(
      leading: CircleAvatar(child: Icon(FontAwesomeIcons.userAlt),),
      title: Text('아이디 2'),
      subtitle: Text('마지막 채팅내용'),
      trailing: SizedBox(
        height: 50.0,
        width: 50.0,
        child: Image.network('http://image.hanssem.com/hsimg/gds/368/502/502858_A1.jpg?v=20210820095507'),
      ),
    ),
    ListTile(
      leading: CircleAvatar(child: Icon(FontAwesomeIcons.userAlt),),
      title: Text('아이디 3'),
      subtitle: Text('마지막 채팅내용'),
      trailing: SizedBox(
        height: 50.0,
        width: 50.0,
        child: Image.network('http://image.hanssem.com/hsimg/gds/368/502/502858_A1.jpg?v=20210820095507'),
      ),
    ),
    ListTile(
      leading: CircleAvatar(child: Icon(FontAwesomeIcons.userAlt),),
      title: Text('아이디 4'),
      subtitle: Text('마지막 채팅내용'),
      trailing: SizedBox(
        height: 50.0,
        width: 50.0,
        child: Image.network('http://image.hanssem.com/hsimg/gds/368/502/502858_A1.jpg?v=20210820095507'),
      ),
    ),
    ListTile(
      leading: CircleAvatar(child: Icon(FontAwesomeIcons.userAlt),),
      title: Text('아이디 5'),
      subtitle: Text('마지막 채팅내용'),
    ),
    ListTile(
      leading: CircleAvatar(child: Icon(FontAwesomeIcons.userAlt),),
      title: Text('아이디 6'),
      subtitle: Text('마지막 채팅내용'),
    ),
    ListTile(
      leading: CircleAvatar(child: Icon(FontAwesomeIcons.userAlt),),
      title: Text('아이디 1'),
      subtitle: Text('마지막 채팅내용'),
      trailing: SizedBox(
        height: 50.0,
        width: 50.0,
        child: Image.network('http://image.hanssem.com/hsimg/gds/368/502/502858_A1.jpg?v=20210820095507'),
      ),
    ),
    ListTile(
      leading: CircleAvatar(child: Icon(FontAwesomeIcons.userAlt),),
      title: Text('아이디 2'),
      subtitle: Text('마지막 채팅내용'),
      trailing: SizedBox(
        height: 50.0,
        width: 50.0,
        child: Image.network('http://image.hanssem.com/hsimg/gds/368/502/502858_A1.jpg?v=20210820095507'),
      ),
    ),
    ListTile(
      leading: CircleAvatar(child: Icon(FontAwesomeIcons.userAlt),),
      title: Text('아이디 3'),
      subtitle: Text('마지막 채팅내용'),
      trailing: SizedBox(
        height: 50.0,
        width: 50.0,
        child: Image.network('http://image.hanssem.com/hsimg/gds/368/502/502858_A1.jpg?v=20210820095507'),
      ),
    ),
    ListTile(
      leading: CircleAvatar(child: Icon(FontAwesomeIcons.userAlt),),
      title: Text('아이디 1'),
      subtitle: Text('마지막 채팅내용'),
      trailing: SizedBox(
        height: 50.0,
        width: 50.0,
        child: Image.network('http://image.hanssem.com/hsimg/gds/368/502/502858_A1.jpg?v=20210820095507'),
      ),
    ),
    ListTile(
      leading: CircleAvatar(child: Icon(FontAwesomeIcons.userAlt),),
      title: Text('아이디 2'),
      subtitle: Text('마지막 채팅내용'),
      trailing: SizedBox(
        height: 50.0,
        width: 50.0,
        child: Image.network('http://image.hanssem.com/hsimg/gds/368/502/502858_A1.jpg?v=20210820095507'),
      ),
    ),
    ListTile(
      leading: CircleAvatar(child: Icon(FontAwesomeIcons.userAlt),),
      title: Text('아이디 3'),
      subtitle: Text('마지막 채팅내용'),
      trailing: SizedBox(
        height: 50.0,
        width: 50.0,
        child: Image.network('http://image.hanssem.com/hsimg/gds/368/502/502858_A1.jpg?v=20210820095507'),
      ),
    ),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getChatList(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(),);
          } else {
            return ListView(
              children: chatList,
            );
          }
        },
      ),
    );
  }
}




