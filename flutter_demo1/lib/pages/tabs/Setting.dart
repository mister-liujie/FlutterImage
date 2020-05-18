import 'package:flutter/material.dart';
import 'package:flutter_demo1/routes/Routes.dart';

import '../Form.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment:CrossAxisAlignment.center ,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: <Widget>[
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             
              RaisedButton(
              child: Text('跳转到登录页面'),
              textColor: Colors.white ,
              color: Colors.blue,
              textTheme: ButtonTextTheme.primary ,
              onPressed: (){
                print('---denglu---');
                //跳转到登录页面
                Navigator.pushNamed(context,loginPage);
              }),

              SizedBox(width: 10),

              RaisedButton(
                child: Text('跳转到注册页面'),
                textColor: Colors.white ,
                color: Colors.blue,
                textTheme: ButtonTextTheme.primary ,
                onPressed: (){
                  //普通路由跳转
                  Navigator.pushNamed(context, registFirstPage);
              }),
            
            ],
         ),

        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                RaisedButton(
              child: Text('跳转AppBarDemo页面'),
              textColor: Colors.white ,
              color: Colors.blue,
              textTheme: ButtonTextTheme.primary ,
              onPressed: (){
                //  print('按钮的点击事件');
                //普通路由跳转
                Navigator.pushNamed(context, appBarDemo);
            }),
            
            SizedBox(width:10),

            RaisedButton(
              child: Text('跳转 tabBar 页面'),
              textColor: Colors.white ,
              color: Colors.blue,
              textTheme: ButtonTextTheme.primary ,
              onPressed: (){
                //  print('按钮的点击事件');
                //普通路由跳转
                Navigator.pushNamed(context, tabbarDemo);
            }),
          ],
        ),

        SizedBox(height:10),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
               RaisedButton(
                child: Text('跳转到表单页面'),
                textColor: Colors.white ,
                color: Colors.blue,
                textTheme: ButtonTextTheme.primary ,
                onPressed: (){
                  //  print('按钮的点击事件');
                  //普通路由跳转
                  Navigator.of(context).push(
                    //普通路由
                    MaterialPageRoute(
                      //不传参的路由跳转
                      //builder: (context)=>FomePage()
                      //传参的路由跳转
                      builder: (context)=>FomePage(title:'我是页面传值')
                      )
                  );
              }),

              SizedBox(width:10),
            
              RaisedButton(
                child: Text('跳转 button 页面'),
                textColor: Colors.white ,
                color: Colors.blue,
                textTheme: ButtonTextTheme.primary ,
                onPressed: (){
                  //  print('按钮的点击事件');
                  //普通路由跳转
                  Navigator.pushNamed(context, buttonPage);
              }),
          ],
        ),
        
       
        SizedBox(height:10),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              RaisedButton(
                child: Text('跳转 textfile 页面'),
                textColor: Colors.white ,
                color: Colors.blue,
                textTheme: ButtonTextTheme.primary ,
                onPressed: (){
                  //  print('按钮的点击事件');
                  //普通路由跳转
                  Navigator.pushNamed(context, textfilePage);
              }),
              SizedBox(width:10),

              RaisedButton(
                child: Text('跳转 checkBox 页面'),
                textColor: Colors.white ,
                color: Colors.blue,
                textTheme: ButtonTextTheme.primary ,
                onPressed: (){
                  //普通路由跳转
                  Navigator.pushNamed(context,checkboxPage);
              }),
          ],
        ),

        SizedBox(height:10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             RaisedButton(
              child: Text('跳转练习 页面'),
              textColor: Colors.white ,
              color: Colors.blue,
              textTheme: ButtonTextTheme.primary ,
              onPressed: (){
                //普通路由跳转
                Navigator.pushNamed(context,formdemoPage);
            }),

            SizedBox(width: 20,),

            RaisedButton(
              child: Text('时间戳页面'),
              textColor: Colors.white ,
              color: Colors.blue,
              textTheme: ButtonTextTheme.primary ,
              onPressed: (){
                //普通路由跳转
                Navigator.pushNamed(context,datePickerPage);
            }),
            SizedBox(width: 20,),

            RaisedButton(
              child: Text('轮播图页面'),
              textColor: Colors.white ,
              color: Colors.blue,
              textTheme: ButtonTextTheme.primary ,
              onPressed: (){
                Navigator.pushNamed(context,swiperPage);
            }),
          ],
        ),
        SizedBox(height:10),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             RaisedButton(
              child: Text('dislog页面'),
              textColor: Colors.white ,
              color: Colors.blue,
              textTheme: ButtonTextTheme.primary ,
              onPressed: (){
                //普通路由跳转
                Navigator.pushNamed(context,dialogPage);
            }),

            SizedBox(width: 20,),

            RaisedButton(
              child: Text('map转json页面'),
              textColor: Colors.white ,
              color: Colors.blue,
              textTheme: ButtonTextTheme.primary ,
              onPressed: (){
                //普通路由跳转
                Navigator.pushNamed(context,mapjsonPage);
            }),
            SizedBox(width: 20,),

            RaisedButton(
              child: Text('轮播图页'),
              textColor: Colors.white ,
              color: Colors.blue,
              textTheme: ButtonTextTheme.primary ,
              onPressed: (){
                Navigator.pushNamed(context,swiperPage);
            }),
          ],
        ),
       
      ],
    );
  }
}