import 'package:flutter/material.dart';
import 'Module.dart';

class DetailPage extends StatelessWidget {
 
  // 方法一  页面接收 传递的参数
  // 同意路由构造函数  传参的参数常量
  final arguments;
  //自定义的构造器   自定义的和默认 的只能存在一个
  DetailPage({this.arguments});

  //默认的构造器
  // const DetailPage({Key key}) : super(key: key);
  //  Map arguments1 = ModalRoute.of(context).settings.arguments;

  @override
  Widget build(BuildContext context) {
    
    //方法二 页面接收传递的参数
    /*获取传递过来的参数*/
    People _people = ModalRoute.of(context).settings.arguments;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('详情页面'),
        //自定义返回按钮
        // leading: InkWell(
        //   onTap:(){
        //      Navigator.pop(context);
        //   },
        //   child: Icon(Icons.arrow_back),
        // ),
      ),

      // body: Text('商品详情页面${arguments != null ? arguments["id"]:'0'}'),
       body: Column(
      
         mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.stretch,
       // crossAxisAlignment: CrossAxisAlignment.end,
         children: <Widget>[
            
            //Text("姓名：${_people.name},年龄：${_people.age}"),
            RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  /*返回数据*/
                  // Navigator.of(context).pop();
                   Navigator.pop(context);
                  // Navigator.of(context).pop(People("YZQ", 18));
                },
                child: Text(
                  "无返回数据的出栈",
                  style: TextStyle(color: Colors.white),
                ),
            ),
             RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  /*返回数据*/
                  // Navigator.of(context).pop();
                  Navigator.of(context).pop(['1','2','3']);
                  // Navigator.of(context).pop(People("YZQ", 18));
                },
                child: Text(
                  "返回数据",
                  style: TextStyle(color: Colors.white),
                ),
              ),
         ],
          
      ),
    );
  }
}