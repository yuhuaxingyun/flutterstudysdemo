import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<HomePage>{
  ImageInfo info;//图片信息

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    Image.asset("images/tab_home_normal.png");
//      .image
//      .resolve(createLocalImageConfiguration( context ))
//      .addListener((ImageInfo image, bool synchronousCall){
//        setState(() {
//          info = image;
//        });
//       });

  }

//  Widget img = Image(AssetImage("images/tab_home_normal.png"))
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar (
        title: new Text("首页"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: null),
        ],
      ),
      body: Center(
        child: Image.network(
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1554110093883&di=9db9b92f1e6ee0396b574a093cc987d6&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn20%2F151%2Fw2048h1303%2F20180429%2F37c0-fzvpatr1915813.jpg",
          fit: BoxFit.cover,
        ),
//        child: img,
      ),
    );
  }
}

