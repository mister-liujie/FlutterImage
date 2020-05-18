import 'package:flutter/material.dart';
import 'package:flutter_demo1/pages/user/Login.dart';
import 'package:flutter_demo1/routes/Routes.dart';

import '../Tabs.dart';


class RegistSecPage extends StatelessWidget {
  const RegistSecPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('第二个注册页面')
       ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
          //  SizedBox(height:40),
          //  Text('这是登录页面'),
           RaisedButton(
             child: Text('返回'),
             onPressed: (){
              //出栈 
              //  Navigator.pop(context);
              
              //和下面的代码效果是一样的 但是 pushName 是不可以传参的
              // Navigator.pushNamedAndRemoveUntil(context,tabbar,(route) => route == null);
              //可以 给 push 的页面传递参数 
              Navigator.of(context).pushAndRemoveUntil(
                  //  返回到 tabbar 但是不修改tabbar Index 
                // new MaterialPageRoute(builder:(context) => new Tabs()),
                //回到 默认的  tabbar 页面
                new MaterialPageRoute(builder:(context) => new Tabs(index:1)),
                (route) => route == null
              );
              
               //和上面的代码等价 直接回到 tabbar 基础路由
              //  Navigator.pushAndRemoveUntil(context,
              //     new MaterialPageRoute(
              //       builder: (BuildContext context) {
              //         return new Tabs();
              //       },
              //   ), (route) => route == null);
            },
           ),
         ],
       ),
    );
  }
}
