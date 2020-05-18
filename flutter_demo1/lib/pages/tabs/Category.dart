import 'package:flutter/material.dart';
//导入路由文件
import 'package:flutter_demo1/routes/Routes.dart';

import '../Form.dart';


// 第一种创建 tabbar 的方式   TabbarControl 是第二种方式 

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  //要定义数组元素类型 否则会报错 
  List titleArr = <Widget>[
      Tab(text:'热门'),
      Tab(text:'推荐'),
      Tab(text:'热门'),
      Tab(text:'推荐'),
      Tab(text:'热门'),
      Tab(text:'推荐'),
      Tab(text:'热门'),
      Tab(text:'推荐'),
  ];

  // 'List<dynamic>' is not a subtype of type 'List<Widget>
  // List titleArr = [
  //     Tab(text:'热门'),
  //     Tab(text:'推荐'),
  //     Tab(text:'热门'),
  //     Tab(text:'推荐'),
  // ];
  
  @override
  Widget build(BuildContext context) {
   
    // TabController 的位置 在 Scaffold 的外面 在 MaterialApp 的里面
    return DefaultTabController(
      //和  bottom 中的长度想对应 另外和TabBarView 中的长度也是对应的
      length: titleArr.length, 
      child:  Scaffold(
        appBar: AppBar(
         //标题是text 的时候 
        // title:Text('自定义导航栏按钮'),
        // centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: TabBar(
                
                //标题数组
                tabs:this.titleArr,
                //  tabs: <Widget>[
                //   Tab(text:'热门'),
                //   Tab(text:'热门'),
                //   Tab(text:'热门'),
                //   Tab(text:'热门'),
                //  ],
                
                //多个按钮可以滑动  设置了 就可以完全显示顶部的标题
                isScrollable: true,
                labelColor: Colors.red,
                unselectedLabelColor: Colors.white,
                //下面线条的样式
                indicatorColor: Colors.red,
                indicatorSize: TabBarIndicatorSize.label,

              )
            )
          ],
        ),

        //  bottom: TabBar(
        //     tabs: <Widget>[
        //       Tab(text:'热门'),
        //       Tab(text:'推荐'),
        //       // Tab(text:'新品'),
        //     ]
        //   ),
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
             ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第三个 tab'),
                ),
                ListTile(
                  title: Text('第三个 tab'),
                ),
              ],
            ),
             ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第四个 tab'),
                ),
                ListTile(
                  title: Text('第四个 tab'),
                ),
                ListTile(
                  title: Text('第四个 tab'),
                ),
              ],
            ),
             ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第三个 tab'),
                ),
                ListTile(
                  title: Text('第三个 tab'),
                ),
              ],
            ),
             ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第四个 tab'),
                ),
                ListTile(
                  title: Text('第四个 tab'),
                ),
                ListTile(
                  title: Text('第四个 tab'),
                ),
              ],
            ),
             ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第三个 tab'),
                ),
                ListTile(
                  title: Text('第三个 tab'),
                ),
              ],
            ),
             ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第四个 tab'),
                ),
                ListTile(
                  title: Text('第四个 tab'),
                ),
                ListTile(
                  title: Text('第四个 tab'),
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