

import 'package:flutter/material.dart';
import 'package:flutterctrip/pages/home_page.dart';
import 'package:flutterctrip/pages/my_page.dart';
import 'package:flutterctrip/pages/search_page.dart';
import 'package:flutterctrip/pages/travel_page.dart';
import 'package:flutterctrip/utils/screen_utils.dart';

class TabNavigator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _TabNavigatorState();
  }

}

class _TabNavigatorState extends State<TabNavigator>{

  int _currentIndex = 0;
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    MyScreenUtils.initScreenUtils(context, designWidth: 500);
    return Scaffold(
      body: PageView(
        onPageChanged: (index){
          setState(() {
            this._currentIndex = index;
          });
        },
        controller: _controller,
        children: <Widget>[
          HomePage(),
          TravelPage(),
          SearchPage(),
          MyPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index){
          _controller.jumpToPage(index);
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          createBottomNavigationBarItem(0, Colors.black12, Colors.blue, Icons.home, "首页"),
          createBottomNavigationBarItem(1, Colors.black12, Colors.blue, Icons.card_travel, "旅拍"),
          createBottomNavigationBarItem(2, Colors.black12, Colors.blue, Icons.search, "搜索"),
          createBottomNavigationBarItem(3, Colors.black12, Colors.blue, Icons.person, "我的"),
        ],
      ),
    );
  }

  BottomNavigationBarItem createBottomNavigationBarItem(index, defaultColor, activeColor, icon, text){
    return BottomNavigationBarItem(
        icon: Icon(icon, color: defaultColor,),
        activeIcon: Icon(icon, color: activeColor,),
        title: Text(text, style: TextStyle(color: _currentIndex == index ? activeColor : defaultColor),));
  }

}