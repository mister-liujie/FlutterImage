import 'package:flutter/material.dart';
import 'package:flutter_demo1/routes/Routes.dart';


//staless 不能创建数组
class AppBarDemoPage extends StatelessWidget {
  
  const AppBarDemoPage({Key key}) : super(key: key);
  
   //页面数组
  //  List titleList = [
  //   'home title',
  //   'category title',
  //   'set title'
  // ];

  @override
  Widget build(BuildContext context) {
   
    // TabController 的位置 在 Scaffold 的外面 在 MaterialApp 的里面
    return DefaultTabController(
      //和  bottom 中的长度想对应 另外和TabBarView 中的长度也是对应的
      length: 2, 
      child:  Scaffold(
        /*
        appBar: AppBar(
          title:Text('自定义导航栏按钮'),
        ),
        */
       appBar: AppBar(
        title:Text('自定义导航栏按钮'),
        centerTitle: true,
        //左侧按钮
          //自定义返回按钮  图标
          // leading: InkWell(
          //   child: Icon(Icons.arrow_back),
          //   //左侧导航栏的点击方法
          //   onTap:(){
          //      print('自定义导航栏左侧按钮');
          //      Navigator.pop(context);
          //   },
          // ),
        //文字
        //  leading: RaisedButton(
        //    child: Text('取'),
        //    onPressed: (){
        //       print('文字返回按钮');
        //    }
        //  ),
        //只有图片 没有点击方法 
        //  leading:Icon(
        //    Icons.access_time,
        //  ),
        // 导航条左侧按钮
        leading: IconButton(
            icon:Icon(Icons.menu),
            onPressed: (){
              print('自定义左侧按钮');
              Navigator.pop(context);
          }
        ),
        //右侧按钮
        actions: <Widget>[
            IconButton(icon: Icon(Icons.ac_unit), 
              onPressed: (){
                print('右侧按钮1');
              }
            ),
            IconButton(icon: Icon(Icons.settings), 
              onPressed: (){
                print('右侧按钮2');
              }
            ),
            PopupMenuButton(
                itemBuilder: (BuildContext context) =>
                <PopupMenuItem<String>>[
                  PopupMenuItem<String>(child: Text("热度"), value: "hot",),
                  PopupMenuItem<String>(child: Text("最新"), value: "new",),
                ],
                onSelected: (String action) {
                  switch (action) {
                    case "hot":
                      print("hot");
                      break;
                    case "new":
                      print("new");
                      break;
                  }
                },
                onCanceled: () {
                  print("onCanceled");
                },
            )
            //Icon(Icons.ac_unit)
            // RaisedButton(
            //   child: Text('取消'),
            //   onPressed: (){
            //       print('文字返回按钮');
            //   },
            // )
        ],
        
         bottom: TabBar(
            tabs: <Widget>[
              Tab(text:'热门'),
              Tab(text:'推荐'),
            
              //Tab(text:'新品'),
            ]
          ),
       ),
      
       body: TabBarView(
         children: <Widget>[
             ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第一个 tab'),
                ),
                ListTile(
                  title: Text('第一个 tab'),
                ),
                ListTile(
                  title: Text('第一个 tab'),
                ),
              ],
            ),
             ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第二个 tab'),
                ),
                ListTile(
                  title: Text('第二个 tab'),
                ),
                ListTile(
                  title: Text('第二个 tab'),
                ),
              ],
            ),
       ])

        // body: Container(
        //   width: 375,
        //   height: 500,
        //   color: Colors.orange,
        //   child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: <Widget>[
        //         Text("自定义导航栏 左侧按钮"),
        //         RaisedButton(
        //             child: Text('返回'),
        //             textColor: Colors.white ,
        //             // color: Colors.blue,
        //             color:Theme.of(context).accentColor,
        //             textTheme: ButtonTextTheme.primary ,
        //             onPressed: (){
        //               Navigator.pop(context);
        //         }),
        //       ],
        //     )
        // )
      
      ),
    );
  }
}


// state widget 可以创建数组

class AppBarStateDemo extends StatefulWidget {
  AppBarStateDemo({Key key}) : super(key: key);
  @override
  _AppBarStateDemoState createState() => _AppBarStateDemoState();
}

class _AppBarStateDemoState extends State<AppBarStateDemo> {
  
  List titleList = [
    'home title',
    'category title',
    'set title'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('内容'),
    );
  }
}
