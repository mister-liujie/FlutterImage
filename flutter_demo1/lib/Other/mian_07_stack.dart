import 'package:flutter/material.dart';
import '../res/listData.dart';

//stack 布局 层叠布局  

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
  
   return Center(
     
    child: Container(
      width: 500.0,
      height: 600.0,
      color: Colors.cyan,
       child: Stack(
          // alignment: Alignment.bottomCenter,
          alignment: Alignment.topLeft,
          children: <Widget>[
            
              Image.network('https://www.itying.com/images/flutter/1.png'),
              Text(
                  '这是一个标题',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
          ],
        ),
      ),
    );

  



   //这种方式 图片在顶部  
  //  return Container(
  //   //  padding: EdgeInsets.all(10),
  //    child: Stack(
  //      alignment: Alignment.bottomCenter,
  //      children: <Widget>[
  //          Image.network('https://www.itying.com/images/flutter/1.png'),
  //          Text(
  //             '这是一个标题',
  //             textAlign: TextAlign.center,
  //             style: TextStyle(
  //               color: Colors.white
  //             ),
  //           ),
  //      ],
  //    ),
  //  );

  //这种方法 图片再底部
  //  return Container(
  //    padding: EdgeInsets.all(10),
  //    child: Stack(
  //      alignment: Alignment.topCenter,
  //      children: <Widget>[
  //        Align(
  //          alignment: Alignment.topCenter,
  //          child: Image.network('https://www.itying.com/images/flutter/1.png'),
  //        ),
  //        Align(
  //          alignment: Alignment.bottomCenter,
  //          child: Text(
  //             '这是一个标题',
  //             textAlign: TextAlign.center,
  //             style: TextStyle(
  //               color: Colors.black
  //             ),
  //           ),
  //        ),
  //      ],
  //    ),
  //  );
   
  
  }
}
