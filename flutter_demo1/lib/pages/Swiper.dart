import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../res/listData.dart';


class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('轮播图'),
      ),
      body: Column(
        children: <Widget>[
          
          Container(
            child: AspectRatio(
              aspectRatio: 16/9,
              child: Swiper(
                // itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    // "http://via.placeholder.com/288x188",
                    // 'https://www.itying.com/images/flutter/1.png',
                    listData[index]['imageurl'],
                    // fit: BoxFit.fitHeight,
                     fit: BoxFit.fitWidth,
                  );
                },
                // itemCount: 10,
                itemCount: listData.length,
                viewportFraction: 1.0,
                scale: 1.0,
                //页面控制器
                pagination: new SwiperPagination(),
                autoplay: true,
                autoplayDelay: 5,
                // 双箭头的控制器
                // control: new SwiperControl(),
              ),
            ),
          )

        ],
      ),
    );
  }
}
