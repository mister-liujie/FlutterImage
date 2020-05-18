

import 'dart:async';
import 'package:flutter/material.dart';


//自定义视图
class MyDialog extends Dialog{
  
  String title;
  String content;
  MyDialog({this.title = '',this.content=''});
 
 _showTimer(context){
   var timer;
   timer = Timer.periodic(Duration(milliseconds: 3000), (t){
       //取消视图
       Navigator.pop(context);
       //关闭定时器
       t.cancel();
   });
 }

  @override
  Widget build(BuildContext context) {

   //执行定时器的方法 
   _showTimer(context);

    return  Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.white,
          child:  Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text('${this.title}'),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: (){
                          print('取消弹窗');
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                )
              ),
              Divider(),

              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Text('${this.content}',textAlign: TextAlign.left,),
              )

              // Padding(
              //   padding: EdgeInsets.all(10),
              //   child: Container(
              //     height: 200,
              //     width: 200,
              //     color: Colors.blue,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}