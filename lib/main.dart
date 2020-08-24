import 'package:flutter/material.dart';
import 'SJHomePage.dart';
import 'SJActivityPage.dart';
import 'SJPersonPage.dart';
import 'TopAppBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NavigationPage(),
    );
  }
}

class NavigationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new NavigationState();
  }
}

class NavigationState extends State<NavigationPage> with TickerProviderStateMixin {
  List<Widget> pageData;
  int currentPosition = 0;
  BottomNavigationBarType animType = BottomNavigationBarType.fixed;

  @override
  Widget build(BuildContext context){

    final BottomNavigationBar botNavBar = new BottomNavigationBar(
      items: [
        new BottomNavigationBarItem(

//            icon: Image(image: AssetImage('images/tab_home_normal.png')),
//              AssetImage("images/tab_home_normal.png"),
//              color: currentPosition == 0 ? Colors.green : Colors.black87,),
//            icon: currentPosition == 0 ? new Image.asset("assets/images/tab_eye_normal.png"):new Image.asset("assets/images/tab_eye_normal.png"),
          icon: new Icon (
            Icons.home,
            color: currentPosition == 0 ? Colors.green : Colors.black87,),
          title: new Text(
            '主页',
            style: new TextStyle(
              color: currentPosition == 0 ? Colors.green : Colors.black87,
            ),
          ),
        ),

        new BottomNavigationBarItem(
          icon: new Icon (
            Icons.local_activity,
            color: currentPosition == 1 ? Colors.green : Colors.black87,),
          title: new Text(
            '活动',
            style: new TextStyle(
              color: currentPosition == 1 ? Colors.green : Colors.black87,
            ),
          ),
        ),
        new BottomNavigationBarItem(
          icon: new Icon (
            Icons.person,
            color: currentPosition == 2 ? Colors.green : Colors.black87,),
          title: new Text(
            '我的',
            style: new TextStyle(
              color: currentPosition == 2 ? Colors.green : Colors.black87,
            ),
          ),
        ),
      ],
      currentIndex: currentPosition,
      type: animType,
      onTap: (index) {
        setState(() {
          currentPosition = index;
        });
      },
    );

    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("navigationBar"),
//      ),
      body: pageData[currentPosition],
      bottomNavigationBar: botNavBar,
    );
  }

  @override
  void initState() {
    super.initState();
    pageData = new List();
    pageData..add(HomePage())..add(ActPage())..add(PersonalPage());
  }
}