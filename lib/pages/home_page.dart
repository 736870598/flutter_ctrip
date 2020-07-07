

import 'package:flutter/material.dart';
import 'package:flutterctrip/pages/home_page/swiper.dart';
import 'package:flutterctrip/utils/screen_utils.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }

}

class _HomePageState extends State<HomePage>{

  double _opacity = 0.0;

  _scroll(offset){
    var val = offset / 200.0;
    val = val < 0.0 ? 0.0 : (val > 1.0 ? 1.0 : val);
    setState(() {
      _opacity = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MediaQuery.removePadding(context: context,
              removeTop: true,
              child: NotificationListener(
                  onNotification: (scrollNotification){
                    if (scrollNotification.depth == 0 &&
                        scrollNotification is ScrollUpdateNotification ){
                      //当第零个元素滚动时候才触发。
                      _scroll(scrollNotification.metrics.pixels);
                    }
                    return false;
                  },
                  child: ListView(
                    children: <Widget>[
                      HomeTopSwiper(),
                      Container(height: MyScreenUtils.getSize(1000),
                        child: ListTile(title: Text("啊哈哈哈哈哈"),),)
                    ],
                  )
              )
          ),
          Opacity(
              child: Container(
                height: MyScreenUtils.getSize(100),
                color: Colors.white,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text("首页"),
                  ),
                ),
              ),
              opacity: _opacity)
        ],
      ),
    );
  }

}