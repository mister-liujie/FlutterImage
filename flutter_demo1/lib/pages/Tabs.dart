
import 'package:flutter/material.dart';
import 'package:flutter_demo1/routes/Routes.dart';

import 'tabs/Category.dart';
import 'tabs/Home.dart';
import 'tabs/Setting.dart';
import 'tabs/TabBarControl.dart';

class Tabs extends StatefulWidget {
  // 设置显示的索引
  final index;
  Tabs({Key key,this.index=0}) : super(key: key);
  @override
  _TabsState createState() => _TabsState(this.index);

}

class _TabsState extends State<Tabs> {
  //选中的索引
  int _currentSelIndex = 2;
  //自定义构造方法
  _TabsState(index){
    this._currentSelIndex = index;
  }

  // 生命周期函数 
  @override 
  void initState() { 
    super.initState();
    // _currentSelIndex = 2;

    print('---tabbar--页面初始化');
  }

  //页面数组
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
    // TabBarControlPage()
  ];

  List titleList = [
    'home title',
    'category title',
    'set title',
    // 'tabbar title'
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: Text(
            titleList[this._currentSelIndex],
            style: TextStyle(
              color: Colors.orange,
            ),
          )
        ),
         //浮动按钮
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add,color: Colors.black,size: 40,),
        //   backgroundColor: Colors.pink,
        //   elevation: 20,
        //   highlightElevation: 20,
        //   onPressed: (){
        //   print('浮动按钮点击');
        // }),
        // //浮动按钮的位置  centerDocked  
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        
         //浮动按钮
      floatingActionButton: Container(
        height: 70,
        width: 70,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top:1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: Colors.blue,
            // color: Colors.white
        ),
        child: FloatingActionButton(
        
          // child: Icon(Icons.add,color: Colors.black,size: 40,),
          child: Icon(Icons.add,color:Colors.black,),
          // backgroundColor: Colors.white,
          //设置可选的背景颜色
          backgroundColor: this._currentSelIndex == 1 ? Colors.red: Colors.yellow ,
          onPressed: (){
             print('浮动按钮点击');
             setState(() {
               this._currentSelIndex = 1;
             });
        }),
      ),
     
      //浮动按钮的位置  centerDocked  
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,

        //显示内容
        // body: HomeContent(),
        // body: HomePage(),
        // body: Text('tabbar'),
        
        //页面切换
        body: this._pageList[this._currentSelIndex],

        bottomNavigationBar: BottomNavigationBar(
          
          //图标的大小
          iconSize: 25.0,
          //选中的颜色
          fixedColor: Color.fromRGBO(219, 58, 58, 1.0),
          //配置底部tab 可以有多个按钮  大于3个的时候 需要设置
          type: BottomNavigationBarType.fixed,
          //选中的索引
          currentIndex: this._currentSelIndex,
          // currentIndex: 2,
          //店家tabbar 的方法 
          onTap:(int index){
            setState(() {  // 改变状态 类似小程序的 setdata 
              this._currentSelIndex = index;
            });
             print('---index--选中的索引--${this._currentSelIndex}--');
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
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.tab),
            //   title: Text('Tabbar')
            // ),
          ]
        ),
        
        // 实现侧边栏 抽屉效果  左边侧边栏
        drawer: Drawer(
          // child: Text('你好flutter'),
          child: Column(
            children: <Widget>[

              //抽屉头部效果
              Row(
                 children: <Widget>[
                    // Expanded(
                    //   child:DrawerHeader(
                    //       //背景图片
                    //       decoration: BoxDecoration(
                    //         //设置背景颜色
                    //         color: Colors.yellow,
                    //         //设置背景图片
                    //         image: DecorationImage(
                    //           image: NetworkImage('https://www.itying.com/images/flutter/1.png'),
                    //           fit: BoxFit.cover,
                    //         )
                    //       ),
                    //       child: Text('你好 flutter',
                    //       style: TextStyle(color: Colors.white,)
                    //       )
                    //   ),
                    // )

                     Expanded(
                      child: UserAccountsDrawerHeader(
                          accountName: Text('张三'),
                          accountEmail: Text('adnsw'),
                          currentAccountPicture: CircleAvatar(
                            backgroundColor: Colors.cyan,
                            backgroundImage: NetworkImage('https://www.itying.com/images/flutter/3.png'),
                          ),

                          //背景图片
                          decoration: BoxDecoration(
                            //设置背景颜色
                            // color: Colors.yellow,
                            //设置背景图片
                            image: DecorationImage(
                              image: NetworkImage('https://www.itying.com/images/flutter/2.png'),
                              fit: BoxFit.cover,
                            )
                          ),
                         
                      ),
                    )
                 ],
              ),

              ListTile(
                //头像圆角
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
                title: Text('用户信息'),
                onTap: (){
                  //隐藏侧边栏 
                  Navigator.pop(context);
                  print('--我的空间--');
                  Navigator.pushNamed(context, userInfoPage);
                },
              ),
              //下划线 类似 cell 上的line 
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
                title: Text('我的空间'),
                onTap: (){

                  //隐藏侧边栏 
                  Navigator.pop(context);
                  print('--我的空间--');
                  Navigator.pushNamed(context, userInfoPage);
                },
              ),
              Divider(),

            ],
          ),
        ),
        // 右边侧边栏
        endDrawer: Drawer(
          child: Text('右侧侧边栏'),
        ),
      );
  }
}