import 'package:flutter/material.dart';
import '../res/listData.dart';

// wrap  类似  collectionView

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
        body: LayoutDemo(),

      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }  
}

// https://www.itying.com/images/flutter/1.png

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    // return  RaisedButton(
    //   child: Text('第一季'),
    //   textColor: Theme.of(context).accentColor , 
    //   onPressed: (){
    //       print('btn click');
    //   }
    // );

  // return  myButton('第一季');

  //  return Wrap(
  //      spacing: 10,
  //      runSpacing: 10,
  //      children: <Widget>[
  //        myButton('第一季'),
  //        myButton('第二季第二集'),
  //        myButton('第三季'),
  //        myButton('第四季第一集'),
  //        myButton('第一季'),
  //        myButton('第二季第二集'),
  //        myButton('第三季'),
  //        myButton('第四季第三集'),
  //        myButton('第一季'),
  //        myButton('第二季第二集'),
  //        myButton('第三季'),
  //        myButton('第四季'),
  //      ],
  //  );

  return Container(
     height: 600,
     width: 414,
     color: Colors.pink,
     child:Wrap(
          spacing: 10,
          runSpacing: 10,
          //列
          alignment: WrapAlignment.center,
          //行
          runAlignment: WrapAlignment.center,
          children: <Widget>[
            myButton('第一季'),
            myButton('第二季第二集'),
            myButton('第三季'),
            myButton('第四季第一集'),
            myButton('第一季'),
            myButton('第二季第二集'),
            myButton('第三季'),
            myButton('第四季第三集'),
            myButton('第一季'),
            myButton('第二季第二集'),
            myButton('第三季'),
            myButton('第四季'),
          ],
      )
   );
  }
}

//自定义方法 
class myButton extends StatelessWidget {
  final String text;
  const myButton(this.text,{Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor , 
      onPressed: (){

          print('btn click--${this.text}');
      }
    );
  }
}
