import 'package:flutter/material.dart';
import '../res/listData.dart';

//card 卡片组件  可以由 widget 组成  card 具有圆角和阴影

// 显示圆角图片的2 种方式   ClipOval  CircleAvatar（专门用来处理头像圆角的）


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
    // 只有一个 自定义视图的时候
  
    //设置子视图的宽高比
    // return  ListView(
    //   padding: EdgeInsets.all(10),
    //   children: <Widget>[
    //     Card(
    //       margin: EdgeInsets.all(10),
    //       child: Column(
    //          children: <Widget>[
    //            ListTile(
    //              title: Text('这是一个测试文本',style: TextStyle(fontSize:20.0)),
    //              subtitle: Text('flutter 开发工程师'),
    //            ),
    //             ListTile(
    //              title: Text('电话 xxxx',style: TextStyle(fontSize:18.0)),
    //            ),
    //            ListTile(
    //              title: Text('地址： 永安街'),
    //            )
    //          ],
    //       ),
    //     )
    //   ],
    // );

//  return  ListView(
     
//       children: <Widget>[
//         Card(
//           margin: EdgeInsets.all(10),
//           child: Column(
//              children: <Widget>[
//                AspectRatio(
//                  aspectRatio: 16.0/9.0,
//                  child: Image.network('https://www.itying.com/images/flutter/1.png',fit: BoxFit.cover),
//                ),
//                ListTile(
//                  leading:ClipOval(
//                    child: Image.network('https://www.itying.com/images/flutter/1.png',
//                    width: 60,
//                    height: 60,
//                    fit: BoxFit.cover),
//                  ),
//                  title: Text('这是一个测试文本',style: TextStyle(fontSize:20.0)),
//                  subtitle: Text('flutter 开发工程师'),
//                ),
//                 ListTile(
//                  leading:CircleAvatar(
//                    backgroundImage: NetworkImage('https://www.itying.com/images/flutter/1.png'),
//                  ),
//                  title: Text('这是一个常用头像的方法',style: TextStyle(fontSize:20.0)),
//                ),
//              ],
//           ),
//         )
//       ],
//     );

    //map 返回的数据 不是数组 需要进行 tolist 转换一下
    return  ListView(
      
      children: listData.map((value){
        return Card(
           
           margin: EdgeInsets.all(10),
           child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 20/9,
                  child: Image.network(value['imageurl'],fit: BoxFit.cover,),
                ),
                ListTile(
                  leading:CircleAvatar(
                     backgroundImage: NetworkImage(value['imageurl']),
                  ),
                   title: Text(value['title']),
                   subtitle: Text(value['auther'],maxLines: 2,overflow: TextOverflow.ellipsis,),
                )
              ],
           ),
        );
       }
     ).toList(),
    );
  }
}
