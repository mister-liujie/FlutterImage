import 'package:flutter/material.dart';


class SearchPage extends StatelessWidget {
  
  //传参的参数常量
  final arguments;
  //自定义的构造器   自定义的和默认 的只能存在一个
  SearchPage({this.arguments});
  //默认的构造器
  // const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('搜索页面'),
        ),
        body: Text('搜索页面内容'),
    );
  }
}



//有状态的页面
// class SearchPage extends StatefulWidget {
  
//   SearchPage({Key key}) : super(key: key);
//   @override
//   _SearchPageState createState() => _SearchPageState();
// }

// class _SearchPageState extends State<SearchPage> {
//   @override
//   Widget build(BuildContext context) {
//     // return Container(
//     //    child: Center(
//     //      child: Text('---搜索页面---'),
//     //    ),
//     // );
    // return Scaffold(
    //     appBar: AppBar(
    //       title: Text('搜索页面'),
    //     ),
    //     body: Text('搜索页面内容'),
    // );
//   }
// }
