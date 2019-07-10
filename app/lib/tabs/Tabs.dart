import 'package:flutter/material.dart';
import '../pages/Home.dart';
import '../pages/Category.dart';
import '../pages/Cart.dart';
import '../pages/People.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int currentIndex = 0;
  PageController pageController;

  void initState() {
    super.initState();
    this.pageController = new PageController(initialPage: this.currentIndex);
  }

  List<Widget> pageList = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    PeoplePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.center_focus_weak,size: 28, color: Colors.white),
          onPressed: () {

          },
        ),
        title: Text('建兰商城'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.message,size: 28,color: Colors.white),
            onPressed: () {

            },
          )
        ],
      ),
      body: PageView(
        controller: this.pageController,
        children: this.pageList,
        onPageChanged: (index) {
          setState(() {
            this.currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.currentIndex,
        onTap: (index) {
           setState(() {
             this.currentIndex = index; 
             this.pageController.jumpToPage(index);
           });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('购物车')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('我的')
          )
        ],
      ),
    );
  }
}