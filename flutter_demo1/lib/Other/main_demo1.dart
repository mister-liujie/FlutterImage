import 'package:flutter/material.dart';

//container 组件 （类似div组件）  text 组件
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
        body: HomeContent(),
      ),

      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }  
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        //Container 是个容器组件 类似div 容器组件
        //flutter 中的所有数字 都是double 类型
        child: Container(
           child: Text(
             '我是一个文本组件，显示的是文字的内容，这是一个组件，下面都是组件的属性',
             textAlign: TextAlign.left,
             overflow: TextOverflow.ellipsis,
             maxLines: 2,
             //文字行高 
             textScaleFactor: 1.8,
             style: TextStyle(
               fontSize: 10.0,
               color: Colors.cyan,
               fontWeight: FontWeight.w800,
               fontStyle: FontStyle.italic,
               decoration: TextDecoration.underline,
               decorationColor: Colors.red,
               decorationStyle: TextDecorationStyle.dashed,
               //字体间隔
               letterSpacing: 15.0

             ),

           ),
           width: 300.0,
           height: 300.0,
           
           decoration: BoxDecoration(
             color: Colors.blue,
             border: Border.all(
               color: Colors.orange,
               width: 2.0,
             ),
            //  borderRadius: BorderRadius.circular(20)
             borderRadius: BorderRadius.all(
               Radius.circular(10),
                // Radius.circular(150)
             )
           ),
          //  padding: EdgeInsets.all(
          //    20
          //  ),
          //  padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
           margin: EdgeInsets.fromLTRB(10, 30, 5, 0),
          //  transform: Matrix4.rotationZ(0.3),

        ),  
    //  child: Text(
    //    "这是一个标题11",
    //    textDirection: TextDirection.ltr,
    //    style: TextStyle(
    //      color: Colors.yellow,
    //      fontSize: 40.0,
    //    ) ,
    //  ),  
    );
  }
}


