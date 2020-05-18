
import 'package:flutter/material.dart';
import 'package:flutter_demo1/routes/Routes.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('登录页面')
       ),

       body: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
          //  SizedBox(height:40),
           Text('这是登录页面'),
           RaisedButton(
             child: Text('下一步'),
             onPressed: (){
              
              //  Navigator.pushNamed(context,registFirstPage);
               //跳转页面 并销毁当前页面
              Navigator.pushNamedAndRemoveUntil(context,tabbar,(route) => route == null);
              
           }),
         ],
       ),
    );
  }
}