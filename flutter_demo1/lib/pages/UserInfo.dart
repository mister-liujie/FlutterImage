import 'package:flutter/material.dart';

//json 使用的 链接库
import 'dart:convert';


class UserInfoPage extends StatefulWidget {
  UserInfoPage({Key key}) : super(key: key);

  @override
  _UserInfoPageState createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Map userInfo = {
      'name':'张三',
      'age':20
    }; 
    var a = json.encode(userInfo);
    
    print(a is Map);

  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('个人信息'),

        ),
        body: Container(
          child: Text('个人信息详情页面'),
        ),
    );
  }
}
