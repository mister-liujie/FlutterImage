import 'package:flutter/material.dart';
import '../res/listData.dart';

//单独 拉到了一个 文件里面
// import 'tabbar/Tabs.dart';

// 导航条

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement buildr
    // return HomeContent();
    //MateriApp  作为根组件 类似 window
    return  MaterialApp(
      // Scaffold 类似 tabbarVc
      home: Tabs(),
      
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }  
}

// https://www.itying.com/images/flutter/1.png

//也可以将下面的tabbar 拉取到一个单独的文件里面

///*
class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  
  int _currentSelIndex = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'flutter demo',
            style: TextStyle(
              color: Colors.orange,
            ),
          )
        ),
        //显示内容
        // body: HomeContent(),
        // body: HomePage(),
        body: Text('tabbar'),
       
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 25.0,
          fixedColor: Color.fromRGBO(219, 58, 58, 1.0),
          type: BottomNavigationBarType.fixed,
          
          //选中的索引
          currentIndex: this._currentSelIndex,
          //店家tabbar 的方法 
          onTap:(int index){
            setState(() {
              this._currentSelIndex = index;
            });
            //  print('---index--选中的索引--${index}--');
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('类别')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('设置')
            ),
          ]
        ),
      );
  }
}

//*/