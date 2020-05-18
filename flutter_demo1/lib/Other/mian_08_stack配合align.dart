import 'package:flutter/material.dart';
import '../res/listData.dart';

//stack 布局 层叠布局  配和 align 定位子元素 位置

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
     
     //这样的话 看不到 text
  //    return Center(
  //    child: Stack(
  //      alignment: Alignment.center,
  //      children: <Widget>[
  //       Text('我是一个文本'),
  //        Container(
  //          height: 400.0,
  //          width: 300.0,
  //          color: Colors.red,
  //        ),
        
  //      ], 
  //    ),
  //  );
   

    return Center(
       
       child: Container(
         height: 400.0,
         width: 300.0,
         color: Colors.red,
         

        
        
         //这样显示 所有的 子控件都重叠在了一起  都以alignment 的属性为准
        //  child: Stack(
        //    alignment: Alignment.center,
        //    children: <Widget>[
        //      Icon(Icons.search,size: 80,color: Colors.cyan,),
        //      Icon(Icons.settings,size: 60,color: Colors.blue,),
        //      Icon(Icons.home,size: 40,color: Colors.white,)
        //    ],
        //  ), 

        //stack 配合  align 一起定位 子元素的位置和显示的方式 
         child: Stack(
           children: <Widget>[
            Align(
               
               //alignment 可以有两种显示方式 第一种设置 top left 第二种设置x y 坐标 中心点坐标为 0 0
              // alignment: Alignment.topLeft,
              alignment: Alignment(-1, -0.5),
              child:Icon(Icons.search,size: 40,color: Colors.cyan,),
            ),
             Align(
              alignment: Alignment.center,
              child:Icon(Icons.search,size: 40,color: Colors.cyan,),
            ),
             Align(
              alignment: Alignment.bottomRight,
              child:Icon(Icons.search,size: 40,color: Colors.cyan,),
            ),
           ],
         ),

       ),

    );

  
  }
}
