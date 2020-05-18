import 'package:flutter/material.dart';

class FomePage extends StatelessWidget {
  
  String title;
  //默认的构造函数
  // const FomePage({Key key}) : super(key: key);
  FomePage({this.title = '表单'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //标题
      appBar: AppBar(
        title: Text('表单页面'),
      ),

      //浮动返回按钮
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: (){
          Navigator.of(context).pop();
        }
      ),
      // body:  Container(
      //   child: Text('表单页面'),
      // ),

      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(this.title),
          ),
           ListTile(
            title: Text(this.title),
          ),
          
        ],
      ),
    );
  }
}
