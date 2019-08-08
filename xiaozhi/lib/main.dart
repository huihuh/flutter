import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; 
import './routes.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     localizationsDelegates: [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //此处
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
      home: Tabs(),
      // initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData(
        primaryColor: Colors.pink
      ),
    );
  }
}

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('底部导航'),
      ),
      drawer: Drawer(
        child: Text('左边'),
      ),
      body:HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.currentIndex,
        onTap: (int index) {
          setState(() {
           this.currentIndex = index; 
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('搜索')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            title: Text('编辑')
          ),
          
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('跳到text'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/text');
          },
        ),
        RaisedButton(
          child: Text('跳到容器 '),
          color: Colors.yellow,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/container');
          },
        ),
        RaisedButton(
          child: Text('图片组件 '),
          color: Colors.green,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/image');
          },
        ),
        RaisedButton(
          child: Text('列表组件'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/listview');
          },
        ),
        RaisedButton(
          child: Text('网格布局'),
          color: Colors.green,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/graidview');
          },
        ),
        RaisedButton(
          child: Text('padding'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/padding');
          },
        ),
        RaisedButton(
          child: Text('strack'),
          color: Colors.green,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/strack');
          },
        ),
        RaisedButton(
          child: Text('card组件'),
          color: Colors.green,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/card');
          },
        ),
        RaisedButton(
          child: Text('colum'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/colum');
          },
        )
      
      ],
    );
  }
}













   




