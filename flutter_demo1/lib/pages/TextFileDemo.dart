import 'package:flutter/material.dart';


class TextFileDemoPage extends StatefulWidget {
  TextFileDemoPage({Key key}) : super(key: key);
  @override
  _TextFileDemoPageState createState() => _TextFileDemoPageState();
}

class _TextFileDemoPageState extends State<TextFileDemoPage> {

   // 获取输入框的内容
  var _username = new TextEditingController();
  String _password; //密码

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _username.text = '初始值';

    print('---textfile--页面初始化');
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title:Text('表单演示页面'),
     ),
      body: Padding(
        padding: EdgeInsets.all(20),
        //封装起来的控件
        // child: TextDemo()
        
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: '请输入用户名',
              ),
              controller: _username,
              onChanged: (value){
                setState(() {
                  _username.text = value;
                });
              },
            ),
            SizedBox(height:20),
             TextField(
              decoration: InputDecoration(
                hintText: '请输入密码',
              ),
              obscureText: true,
              // controller: _username,
              onChanged: (value){
                setState(() {
                  _password = value;
                });
              },
            ),
            
            SizedBox(height:20),

            Container( 
              //跟随屏幕宽度  容器宽度自适应 
              width: double.infinity,
              height: 45,
              child: RaisedButton(
                child: Text('登录'),
                onPressed: (){
                 print('文本框内的指--${this._username.text}---${this._password}');
              }),
            )
          ],
        ),
      ),
    );
   
  }
}


//封装组件
class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(),
        SizedBox(height:10),
        TextField(
            maxLength: 50,
            decoration: InputDecoration(
              hintText: '请输入用户名',
              border: OutlineInputBorder()
            ),
        ),
        SizedBox(height:10),
        TextField(
        //  maxLength: 100,
            maxLines: 4,
            decoration: InputDecoration(
              hintText: '多行文本',
              border: OutlineInputBorder()
            ),
        ),
        SizedBox(height:10),
        TextField(
        //  maxLength: 100,
            obscureText: true,
            decoration: InputDecoration(
              hintText: '密码框',
              border: OutlineInputBorder()
            ),
        ),
        SizedBox(height:10),
        TextField(
        //  maxLength: 100,
          decoration: InputDecoration(
            icon: Icon(Icons.people),
            hintText: '请输入用户名',
          //  border: OutlineInputBorder()
          ),
        ),
      ],
    );
  }
}
