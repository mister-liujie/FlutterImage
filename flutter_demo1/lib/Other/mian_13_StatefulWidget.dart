import 'package:flutter/material.dart';
import '../res/listData.dart';

//card 卡片组件  可以由 widget 组成  card 具有圆角和阴影

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement buildr
    // return HomeContent();
    //Materi  alApp 作为根组件 类似 Windows
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
        // body: HomeContent(),
        body: HomePage(),

      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }  
}

// https://www.itying.com/images/flutter/1.png

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int countNumber = 0;
 List list = new List();
  @override
  Widget build(BuildContext context) {
    
    // return ListView(
    //    children: <Widget>[
    //       Column(
    //          children: <Widget>[
    //            ListTile(
    //              title: Text('${this.countNumber}')
    //            )
    //          ],
    //       ),
    //       SizedBox(height: 20,),
    //       RaisedButton(
    //         onPressed: (){
    //           print('---点击了按钮--');
    //           setState(() {
    //             this.countNumber ++;
    //           });
    //         }
    //       )
    //    ],
    // );

    return ListView(
       children: <Widget>[
          Column(
             children: this.list.map((value){
                return  ListTile(
                    title:Text(value)
                  );
                }
             ).toList()
          ),
          SizedBox(height: 20,),
          RaisedButton(
            onPressed: (){
              setState(() {
                 this.list.add('新增数据${this.list.length}');
              });
            }
          )
       ],
    );
  }
}


