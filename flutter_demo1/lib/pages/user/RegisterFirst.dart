import 'package:flutter/material.dart';
import 'package:flutter_demo1/routes/Routes.dart';



class RegistFirstPage extends StatelessWidget {
  const RegistFirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
       appBar: AppBar(
         title: Text('第一个注册页面')
       ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
          //  SizedBox(height:40),
           RaisedButton(
             child: Text('下一步'),
             onPressed: (){
              //替换路由 
              Navigator.pushReplacementNamed(context, registSecondPage);
              
              //  Navigator.pushNamed(context,registSecondPage);
           }),
         ],
       ),
    );
  }
}
