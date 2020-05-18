import 'package:flutter/material.dart';


class ProductPage extends StatelessWidget {
  // const ProductPage({Key key}) : super(key: key);

 //传参的参数常量
  final arguments;
  //自定义的构造器   自定义的和默认 的只能存在一个
  ProductPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('商品页面'),
        ),
        body: Text('商品页面内容'),
    );
  }
}