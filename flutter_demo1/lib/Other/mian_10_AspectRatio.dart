import 'package:flutter/material.dart';
import '../res/listData.dart';

//aspectRatio  设置子视图的宽高比

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement buildr
    // return HomeContent();
    //Materi  alApp 作为根组件 类似 Windows
    return  MaterialApp(
      // Scaffold 类似 tabbar
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'flutter demo',
            style: TextStyle(
              color: Colors.red,
            ),
          )
        ),
        //显示内容
        // body: HomeContent(),
        body: LayoutDemo(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }  
}

// https://www.itying.com/images/flutter/1.png



class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // 只有一个 自定义视图的时候
  
    //设置子视图的宽高比
    // return  Container(
    //     //  height: 400.0,
    //      width: 300.0,
    //      child: AspectRatio(
    //       aspectRatio: 2.0/1.0,
    //       child: Container(
    //         color: Colors.blue,
    //       ),
    //     ),
    // );
    
    //如果不设置宽度 则默认以 屏幕的宽度为宽
    return AspectRatio(
      aspectRatio: 2.0/1.0,
      child: Container(
        color:Colors.cyan
      ),
    );
    
  }
}
