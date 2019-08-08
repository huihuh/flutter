import 'package:flutter/material.dart';

class StrackPage extends StatelessWidget {
  const StrackPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('层叠组件'),
      ),
      body: Container(
        width: 400,
        height: 400,
        color: Colors.pink,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Icon(Icons.home,color: Colors.white),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(Icons.search,color: Colors.yellow),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.send,color: Colors.white),
            )
          ],
        ),
      )
    );
  }
}