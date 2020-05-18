import 'package:flutter/material.dart';

//显示圆角图片的两种方法

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


        // 加载显示网络图片和本地图片 
        body: LoadImageContent(),
        //显示圆图的第一种方法
        // body: HomeContent(),
        // 显示圆图的第二种方法
        // body: CoreImageContent(),

      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }  
}


//加载 本地图片
class LoadImageContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        //Container 是个容器组件 类似div 容器组件
        //flutter 中的所有数字 都是double 类型
        child: Container(
          //显示一个简单的网络图片
          // child: Image.network(
          //   'https://upload-images.jianshu.io/upload_images/19956127-4591d121b40e3a9b.jpg?imageMogr2/auto-orient/strip|imageView2/2/w/720/format/webp'),
           
           //显示一个本地图片
           child: Image.asset(
             'images/customerservice.png',
             fit: BoxFit.cover,
           ),
           width: 300.0,
           height: 300.0,
           decoration: BoxDecoration(
             color: Colors.yellow
           ),
        ),  
    );
  }
}


//显示图片的第二种方法  一般常用第二种方法
class CoreImageContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        //Container 是个容器组件 类似div 容器组件
        //flutter 中的所有数字 都是double 类型
        child: Container(
          child: ClipOval(
            child: Image.network(
              'https://upload-images.jianshu.io/upload_images/19956127-4591d121b40e3a9b.jpg?imageMogr2/auto-orient/strip|imageView2/2/w/720/format/webp',
              height: 100, 
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),  
    );
  }
}

//显示图片的第一种方法
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        //Container 是个容器组件 类似div 容器组件
        //flutter 中的所有数字 都是double 类型
        child: Container(

          //显示一个简单的网络图片
          // child: Image.network(
          //   'https://upload-images.jianshu.io/upload_images/19956127-4591d121b40e3a9b.jpg?imageMogr2/auto-orient/strip|imageView2/2/w/720/format/webp'),
           
           //显示圆图
           width: 300.0,
           height: 300.0,
           decoration: BoxDecoration(
             color: Colors.blue,
            //  borderRadius: BorderRadius.all(
            //    Radius.circular(150)
            //  ),
            borderRadius: BorderRadius.circular(150),
            //DecorationImage 配合 NetworkImage 使用的
            image: DecorationImage(
              image: NetworkImage('https://upload-images.jianshu.io/upload_images/19956127-4591d121b40e3a9b.jpg?imageMogr2/auto-orient/strip|imageView2/2/w/720/format/webp'),
              // fit: BoxFit.cover,
              // fit: BoxFit.contain,
              fit: BoxFit.fill,
            )
          ), 
        ),  
    );
  }
}


