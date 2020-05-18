import 'package:flutter/material.dart';

import '../res/listData.dart';

//显示圆角图片的两种方法

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement buildr
    // return HomeContent();
    //MaterialApp 作为根组件 类似 Windows
    return  MaterialApp(
      // Scaffold 类似 tabbar
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'flutter demo',
            style: TextStyle(
              color: Colors.red,
            ),
          )
        ),
        //显示内容
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }  
}

// https://www.itying.com/images/flutter/1.png

//
class HomeContent extends StatelessWidget{
  
  //自定义的方法 
  Widget _getListData1 (context,index){
    return Container(
        child: Column(
          children: <Widget>[
            Image.network(listData[index]['imageurl']),
            SizedBox(height: 10),
            Text(
              listData[index]['title'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ), 
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(233, 26, 48, 0.9),
            width: 1
          )
        ),
    );
  }

  List<Widget> _getListData(){
    var tempList = listData.map((value){
       return Container(
          child: Column(
              children: <Widget>[
                Image.network(value['imageurl']),
                SizedBox(height: 15),
                Text(
                  value['title'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color.fromRGBO(26, 78, 159, 1.0),
                    backgroundColor: Colors.orange,
                  ),
                )
              ],   
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 1,
            )
          ),
       );
    });
    return tempList.toList();
  }

  List<Widget> _getData(){
   
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(
        Container(
          // alignment: Alignment.center,
          alignment: Alignment.center,
          child:Text(
            '这是一个第$i个文本',
            style: TextStyle(
               color: Colors.red
            ),
          ),
          color: Colors.blue,
        )
      );
    } 
    return list;
  }
  
  @override
  Widget build(BuildContext context) {
   
   //第一种创建的方式
   return GridView.count(
     //有几列
     crossAxisCount: 2,
    //  children: this._getData(), //子视图
    //  children: this._getListData(),
     children: <Widget>[
       Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,),
       Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,),
       Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,),
       Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,),
       Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,),
       Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover,),
       
     ],
     childAspectRatio: 1.7,
     crossAxisSpacing: 10.0,
     mainAxisSpacing: 10.0,
     padding: EdgeInsets.all(10), //
    //  childAspectRatio: 0.7, //宽高比
   );
   
   //第二种创建 GridView 的方式
  //   return GridView.builder(
  //     padding: EdgeInsets.all(10.0),
  //     itemCount: listData.length,
  //     itemBuilder: this._getListData1,
  //     //builder 创建的时候必须 设置代理
  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //       crossAxisCount: 2,
  //       crossAxisSpacing: 10.0,
  //       mainAxisSpacing: 10.0,
  //     ),
  //  );


  }  
    
}

 


