import 'package:flutter/material.dart';
import '../res/listData.dart';

//stack 布局 层叠布局   配合 position 定位子元素位置

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
    // return IconContainer(Icons.search,color: Colors.blue,);
   
  //  return Center(
  //    child: Stack(
  //      alignment: Alignment.center,
  //      children: <Widget>[
  //        Container(
  //          height: 400.0,
  //          width: 300.0,
  //          color: Colors.red,
  //        ),
  //        Text('我是一个文本',style: TextStyle(
  //          fontSize: 40,
  //          color: Colors.white,
  //        ),),
  //      ], 
  //    ),
  //  );
     

    return Center(
       
       child: Container(
         height: 400.0,
         width: 300.0,
         color: Colors.red,

        //stack 配合  Positioned 一起定位 子元素的位置和显示的方式 
         child: Stack(
           children: <Widget>[
            Positioned(
              // top: 10,
              left: 10, 
              child:Icon(Icons.settings,size: 40,color: Colors.green,),
            ),
             Positioned(
               bottom: 0,
              left: 100,
              child:Icon(Icons.search,size: 40,color: Colors.cyan,),
            ),
             Positioned(
              bottom: 0,
              child:Icon(Icons.home,size: 40,color: Colors.blue,),
            ),
           ],
         ),
       ),
    );
  }
}
