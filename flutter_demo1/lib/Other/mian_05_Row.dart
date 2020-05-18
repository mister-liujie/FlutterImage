import 'package:flutter/material.dart';

import '../res/listData.dart';

//Row View 

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
    return Container(
     height: 800.0,
     width: 400.0,
     color: Colors.pink,
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //  crossAxisAlignment: CrossAxisAlignment.stretch,
        crossAxisAlignment: CrossAxisAlignment.end,
       children: <Widget>[
         IconContainer(Icons.home,color: Colors.blue),
         IconContainer(Icons.search,color: Colors.orange),
         IconContainer(Icons.select_all,color: Colors.yellow),
       ],
     ),
    );

  }
}

