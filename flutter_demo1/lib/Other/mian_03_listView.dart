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
  
  List list = new List();
  HomeContent(){
    for (var i = 0; i < 20; i++) {
      // this.list.add(ListTile(
      //     title:Text('这是一个第$i个文本'),
      //   )
      // );
      this.list.add('这是一个第$i个文本');
    }
  }

  Widget _getListData(context,index){

    return ListTile(
      title: Text(listData[index]['title']),
    );
  }


  List<Widget> _getData(){
    var tempList = listData.map((value){
       return ListTile(
         title:Text(value['title']),
         subtitle: Text(value['auther']),
         leading: Image.network(value['imageurl']),
       );
    });
    return tempList.toList();

    // List<Widget> list = new List();
    // for (var i = 0; i < 20; i++) {
    //   list.add(
    //     ListTile(
    //       title:Text('这是一个第$i个文本')
    //     )
    //   );
    // } 
    // return list;

    // return [
    //   ListTile(
    //     title: Text('我是一个标题'),
    //   ),
    //    ListTile(
    //     title: Text('我是一个标题'),
    //   ),
    //    ListTile(
    //     title: Text('我是一个标题'),
    //   ), 
    //   ListTile(
    //     title: Text('我是一个标题'),
    //   )
    // ];
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return Text(
    //     '你好 flutter '
    // );
   

    return ListView.builder(
          itemCount: listData.length,
          //这个方法要注意 后面不带（）  是直接执行的意思
          itemBuilder: this._getListData
          /*
          itemBuilder: (context,index){
            // return this.list[index];
            //  return ListTile(
            //    title: Text(listData[index]["title"])
            //  );
            // return _getData()[index];
          }
          */
    );
   

    // return ListView.builder(
    //       itemCount: this.list.length,
    //       itemBuilder: (context,index){
    //         // return this.list[index];
    //          return ListTile(
    //            title: Text(this.list[index])
    //          );
    //       }
    // );

  //  return ListView(
  //    children: this._getData()
  //  );



    /*
    return Container(
      height: 180.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180.0,
            color: Colors.red,
          ),
          Container(
            width: 180.0,
            color: Colors.orange,
            child: ListView(
              // children: <Widget>[]
              children: <Widget>[
                 Image.network('https://www.itying.com/images/flutter/1.png'),
                 Text('我是一个文本')
              ],
            )
          )
        ],
      ),
    );
    */

    /*
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Container(
          width: 180.0,
          height: 180.0,
          color: Colors.green,
        ),
        Container(
          width: 180.0,
          height: 180.0,
          color: Colors.red,
        ),
        Container(
          width: 180.0,
          height: 180.0,
          color: Colors.blue,
        ),
        Container(
          width: 180.0,
          height: 180.0,
          color: Colors.orange,
        ),
        Container(
          width: 180.0,
          height: 180.0,
          color: Colors.cyan,
        ),

      ], 
      */

      /*  带视图的列表
      children: <Widget>[
        Image.network('https://www.itying.com/images/flutter/1.png'),
        Container(
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          height: 40,
          padding: EdgeInsets.fromLTRB(0 , 10, 0, 10),
        ),

        Image.network('https://www.itying.com/images/flutter/1.png'),
        Container(
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          height: 40,
          padding: EdgeInsets.fromLTRB(0 , 10, 0, 10),
        ),
       
      ],
      */  
  }
}

 

