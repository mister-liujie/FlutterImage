import 'package:flutter/material.dart';
// import 'package:toast/toast.dart';
import 'package:fluttertoast/fluttertoast.dart';

import './MyDialog.dart';


class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
 

 


  _defaultAlertDialog() async{
  var result = await showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
           title: Text('提示信息', ),
           content: Text('你确定要删除吗', ),
           actions: <Widget>[
             FlatButton(
               child: Text('取消'),
               onPressed: (){
                 print('取消');
                 //让弹框取消
                 Navigator.pop(context);
              }, 
            ),
            FlatButton(
               child: Text('确定'),
               onPressed: (){
                 print('确定');
                 Navigator.pop(context);
              }, 
            )
           ],
        );
      }
    );
    
    print('-alertdialog-reuslt---${result}-');

  }

  _alertDialogShow() async{
  var result = await showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
           title: Text('提示信息', style: TextStyle(fontSize:20,),textAlign: TextAlign.center,),
           content: Text('你确定要删除吗', style: TextStyle(fontSize:18),textAlign: TextAlign.center,),
           actions: <Widget>[
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
                 Container(
                   width: 150,
                  //  color: Colors.blue,
                   child: FlatButton(
                      child: Text(
                          '取消',
                          style: TextStyle(fontSize:20,),
                          textAlign: TextAlign.center,
                      ),
                      onPressed: (){
                        print('取消');
                        //让弹框取消
                        Navigator.pop(context);
                      }, 
                  ),
                 ),
                 Container(
                    width: 150,
                    // color: Colors.cyan,
                    child: FlatButton(
                      child: Text('确定',
                         style: TextStyle(fontSize:20,),
                         textAlign: TextAlign.center,
                      ),
                      onPressed: (){
                        print('确定');
                        Navigator.pop(context);
                      }, 
                  )
                 )
               ],
             ),

            //  FlatButton(
            //    child: Text('取消'),
            //    onPressed: (){
            //      print('取消');
            //      //让弹框取消
            //      Navigator.pop(context);
            //   }, 
            // ),
            // FlatButton(
            //    child: Text('确定'),
            //    onPressed: (){
            //      print('确定');
            //      Navigator.pop(context);
            //   }, 
            // )
           ],
        );
      }
    );
    
    print('-alertdialog-reuslt---${result}-');

  }

  _simpleDialogShow() async{
    var result = await showDialog(
       context: context,
       builder: (context){
         return SimpleDialog(
           title: Text('选择内容',textAlign: TextAlign.center,),
           children: <Widget>[
             SimpleDialogOption(
               child: Text('option A', textAlign: TextAlign.center,),
               onPressed: (){
                 print('---A---');
                 Navigator.pop(context,'A');
               },
             ),
             SimpleDialogOption(
               child: Text('option B',textAlign: TextAlign.center,),
               onPressed: (){
                 print('---B--');
                 Navigator.pop(context,"B");
               },
              ),
              SimpleDialogOption(
               child: Text('option C',textAlign: TextAlign.center,),
               onPressed: (){
                 print('---C---');
                 Navigator.pop(context,'c');
               },
              ),
              
           ],
         );
       }
     );

     print('-SimpleDialog----${result}-');

  }

  _modelBottmSheet() async{
     
    var result = await showModalBottomSheet(
       context: context,
       builder: (context){
          return Container(
            height: 200,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('分享A'),
                  onTap: (){
                    Navigator.pop(context,'c');
                  },
                ),
                 ListTile(
                  title: Text('分享A'),
                  onTap: (){

                  },
                ),
                 ListTile(
                  title: Text('分享A'),
                  onTap: (){

                  },
                ),
              ],
            ),
          );
       }
    );
    print('-showModalBottomSheet----${result}-');
  }
  
  _toastViewDialog() async{
     
    // Fluttertoast.showToast(
    //   msg: "This is Long Toast",
    //   toastLength: Toast.LENGTH_LONG,
    // );

     Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        // backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
     );
  }
  


  // void showToast(String msg, {int duration, int gravity}) {
  //   // Toast.show(msg, context, duration: duration, gravity: gravity);
  // }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Text('轮播图'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: <Widget>[

          RaisedButton(
            child:Text('alert 默认弹出框 安卓效果'), 
            onPressed: _defaultAlertDialog,
           ),
          SizedBox(height: 15,), 
          RaisedButton(
            child:Text('alert 弹出框 iOS 效果'), 
            onPressed: _alertDialogShow,
           ),
          SizedBox(height: 15,),
          RaisedButton(
             child:Text('select 弹出框'), 
             onPressed: _simpleDialogShow,
           ),
           SizedBox(height: 15,),
           RaisedButton(
              child:Text('actionSheet 底部弹出框'), 
             onPressed: _modelBottmSheet,
           ),
           SizedBox(height: 15,),
           
           RaisedButton(
              child:Text('toast 文案弹出框'), 
              // onPressed:() => showToast("Show Center Toast", gravity: Toast.CENTER),
               onPressed: _toastViewDialog,
           ),
           SizedBox(height: 15,),
           RaisedButton(
               child:Text('自定义dialog弹出框'), 
               //  onPressed: _customDialog,
               onPressed: (){
                showDialog(
                  context: context,
                  builder: (context){
                    return  MyDialog(
                      title: '关于我们',
                      content: '这是内容显示数据',
                    );
                  }
                );
              },
           ),
           SizedBox(height: 15,),
        ],
      ),
    );
  }
}
