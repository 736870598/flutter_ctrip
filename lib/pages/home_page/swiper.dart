import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutterctrip/utils/screen_utils.dart';

class HomeTopSwiper extends StatefulWidget {

  @override
  _HomeTopSwiperState createState() => _HomeTopSwiperState();
}

class _HomeTopSwiperState extends State<HomeTopSwiper> {
  var _imageUrls = [
    "http://a0.att.hudong.com/64/76/20300001349415131407760417677.jpg",
    "http://a0.att.hudong.com/64/76/20300001349415131407760417677.jpg",
    "http://a0.att.hudong.com/64/76/20300001349415131407760417677.jpg",
    "http://a0.att.hudong.com/64/76/20300001349415131407760417677.jpg",
    "http://a0.att.hudong.com/64/76/20300001349415131407760417677.jpg",
    "http://a0.att.hudong.com/64/76/20300001349415131407760417677.jpg",
    "http://a0.att.hudong.com/64/76/20300001349415131407760417677.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MyScreenUtils.getSize(300),
        child: Swiper(
            itemCount: _imageUrls.length,
            pagination: SwiperPagination(),
            autoplay: true,
            itemBuilder: (context, index) {
              return Image.network(_imageUrls[index], fit: BoxFit.cover,);
            }
        )
    );
  }
}