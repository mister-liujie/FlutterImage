import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:dio/dio.dart';

class MapEncodePage extends StatefulWidget {
  MapEncodePage({Key key}) : super(key: key);

  @override
  _MapEncodePageState createState() => _MapEncodePageState();
}

class _MapEncodePageState extends State<MapEncodePage> {
  
  List _list=[];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Map userInfo = {
      'usernam':'张三',
      'age':20
    };
    var a = json.encode(userInfo);
    print(userInfo is Map);
    print(a is String);

    Map info = json.decode(a);
    print(info is Map);
    print(info);

   //请求数据
    _getData();
    _postData();
    
  } 
  
  _getData() async{
  
      // var url = 'https://www.googleapis.com/books/v1/volumes?q={http}';
      var url = 'http://a.itying.com/api/v1/productlist';

      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body);
        // var itemCount = jsonResponse['totalItems'];
        print('Number of books about http: ${response.body}');
        setState(() {
          this._list = jsonResponse['result'];
        }); 

      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
  }
 
  _postData() async{
    Map jsonData  ={
     'username':'zhangsna',
     'age':20
    };
    var apiURL = 'http://www.baidu.com';
    
    // Response response = await Dio().post(apiUrl,data: jsonData);
    Response result = await Dio().post(apiURL,data: jsonData);
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(' map 和 json 转换'),
      ),
      
      body: this._list.length >0 ? ListView.builder(
        itemCount: this._list.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text('${this._list[index]['title']}'),
          );
        }
      ):Text('加载中'),

      // body: this._list.length > 0? ListView(
      //   children:this._list.map((value){
      //     return ListTile(
      //       title: Text(value['title']),
      //     );
      //   }).toList(),
      // ):Text('加载中...'),
    );
  }

}

