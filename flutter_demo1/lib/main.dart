import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'res/listData.dart';
import 'pages/Search.dart';
import 'pages/Form.dart';
import 'pages/Detail.dart';
import 'pages/Tabs.dart';

//引入路由
import 'routes/Routes.dart';

// 导航条
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // final routes = {
  //   '/':(context)=>Tabs(),
  //   // 不传参的路由
  //   '/form':(context) => FomePage(), 
  //   '/search':(context) => SearchPage(),
  //   // 传参的路由 
  //   '/detail':(context,{arguments})=>DetailPage(arguments:arguments),
  // };

  @override
  Widget build(BuildContext context) {
    // TODO: implement buildr
    // return HomeContent();
    //MateriApp  作为根组件 类似 window
    return  MaterialApp(
      // Scaffold 类似 VControl
      
     localizationsDelegates: [
       //此处
       GlobalMaterialLocalizations.delegate,
       GlobalWidgetsLocalizations.delegate,
     ],
     supportedLocales: [
       //此处
       const Locale('zh','CH'),
       const Locale('en','US'),
     ],

      //去掉debug 图标
      debugShowCheckedModeBanner: false,

      //设置命名路由的时候 就可以不设置 home 属性
      home: Tabs(),
      //路由方法1
      routes: RoutePath,
      
      //路由方法2 
      //初始化的时候加载的路由 和上面的home 属性 二选一 
      // initialRoute: '/',
      //通用路由
      // onGenerateRoute: onGenerateRoute,
    
      //命名路由 类似小程序 vue 
      // routes: {
      // //  '/':(context)=>Tabs(),
      //  '/search':(context) => SearchPage(),
      //  '/form':(context) => FomePage(), 
      // },
     
     //通用路由
    //  onGenerateRoute: (RouteSettings setting){
    //     //统一处理  固定写法
    //     final String name = setting.name;
    //     final Function pageContentBuilder = this.routes[name];
        
    //     if(pageContentBuilder != null){
    //       if(setting.arguments !=  null){
    //         final Route route = MaterialPageRoute(
    //             builder: (context) =>
    //                 pageContentBuilder(context, arguments: setting.arguments)
    //             );
    //           return route;
    //       }else{
    //         final Route route = MaterialPageRoute(
    //           builder: (context)=>
    //             pageContentBuilder(context));
    //           return route;
    //       }
    //     } 
    //  }, 

      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }  
}

// https://www.itying.com/images/flutter/1.png

//也可以将下面的tabbar 拉取到一个单独的文件里面

/*
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

*/