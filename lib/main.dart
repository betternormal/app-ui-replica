import 'package:carrot_clone/screens/main_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carrot_clone/components/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(home: Splash(),);
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'carrot market',
            theme: ThemeData(
              primaryColor: Color(0xFFff723a),
            ),
            home: MainPageScreen(),
            // initialRoute: '/',
            // routes: {
            //   '/': (context) => InputScreen(),
            //   InputScreen.id: (context) => InputScreen(),
            // },
          );
        }
      },
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    // This is where you can initialize the resources needed by your app while
    await Future.delayed(const Duration(seconds: 1));
  }
}