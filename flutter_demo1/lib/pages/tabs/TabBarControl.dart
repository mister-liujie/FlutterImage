import 'package:flutter/material.dart';


// 上拉加载更多 下拉刷新 一般使用 Tabcontrol 创建 顶部的 tabbar

class TabBarControlPage extends StatefulWidget {
  TabBarControlPage({Key key}) : super(key: key);

  @override
  _TabBarControlPageState createState() => _TabBarControlPageState();
}

//with SingleTickerProviderStateMixin 实现协议   继承
class _TabBarControlPageState extends State<TabBarControlPage> with SingleTickerProviderStateMixin {
  
   List titleArr = <Widget>[
      Tab(text:'热门'),
      Tab(text:'推荐'),
      Tab(text:'热门'),
      // Tab(text:'推荐'),
      // Tab(text:'热门'),
      // Tab(text:'推荐'),
      // Tab(text:'热门'),
      // Tab(text:'推荐'),
  ];
  
  List bodyViewArr = <Widget>[
      Center(child: Text('热销')),
      Center(child: Text('热销')),
      Center(child: Text('热销')),
      // Center(child: Text('热销')),
  ];

  //必须要创建
  TabController  _tabContorl;

  //页面销毁函数  生命周期函数的一种
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabContorl.dispose();
  }

  @override
  void initState(){
    super.initState();
    _tabContorl = new TabController(
      //长度
      length: titleArr.length,
      //固定写法
      vsync: this
    );

   // tabcontorl 添加监听者   打印两次是 一次是选中的 tabbar 打印 另外一个是 上次选中的tabbar 打印
    _tabContorl.addListener((){

       print('tabbar---点击的索引---${_tabContorl.index}');
       //刷新页面的功能  可以实现自定义的功能 方法 
       setState(() {
         
       });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        appBar: AppBar(
          title:Text('tabbarPage'),
          //下半部分的视图
          bottom: TabBar(
            //必须设置 contorl
            controller: this._tabContorl ,
            tabs: this.titleArr,
          ),
        ),
        body: TabBarView(
          //必须实现 control
          controller: this._tabContorl,
          children: <Widget>[
            Center(child: Text('热销')),
            Center(child: Text('推荐')),
            Center(child: Text('热门')),
          
          ]
        ),

    );
  }
}