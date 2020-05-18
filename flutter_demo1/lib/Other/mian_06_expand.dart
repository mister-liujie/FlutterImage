import 'package:flutter/material.dart';

import '../res/listData.dart';

//Expanded  弹性布局 小程序中的 flex  

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement buildr
    // return HomeContent();
    //MaterialApp 作为根组件 类似 Windows
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


class IconContainer extends StatelessWidget{
  
  double size = 32.0;
  Color color = Colors.red;
  IconData icon;

  //默认的构造函数  第一个参数是必选  后面两个是可选的参数
  IconContainer(this.icon,{this.color,this.size});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
     // child: Column(
      child: Center(
          child:Icon(this.icon,size: this.size,color: Colors.white),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // 只有一个 自定义视图的时候
    // return IconContainer(Icons.search,color: Colors.blue,);
   
   //一个固定大小 另外一个弹性布局
   return Row(
    children: <Widget>[
      Expanded(
        flex: 1,
        child: IconContainer(Icons.search,color: Colors.blue),
      ),
      IconContainer(Icons.home,color: Colors.orange),
    ],
   );
   
   //两个弹框 弹性布局
    // return Row(
    //   children: <Widget>[
    //     Expanded(
    //       flex: 1,
    //       child: IconContainer(Icons.search,color: Colors.blue),
    //     ),
    //     Expanded(
    //       flex: 2,
    //       child: IconContainer(Icons.search,color: Colors.cyan)
    //       ),
    //   ],
    // );
  }
}

