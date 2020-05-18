import 'package:flutter/material.dart';

//导入的文件
import 'package:flutter_demo1/routes/Routes.dart';
import '../Search.dart';
//传入model 
import '../Module.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start ,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: <Widget>[
        RaisedButton(
          child: Text('普通路由压栈页面'),
          textColor: Colors.white ,
          color: Colors.blue,
          textTheme: ButtonTextTheme.primary ,
          onPressed: (){
             //普通路由跳转  不带参数
             Navigator.of(context).push(
                MaterialPageRoute(
                 builder: (context)=>SearchPage()
                )
             );

              //普通路由 带参 
              // Navigator.push(context, 
              //   MaterialPageRoute(
              //     builder: (context) => DetailPage(),
              //     settings: RouteSettings(
              //       arguments:People("wangwu",19),
              //     )
              //   )
              // );
              //或者 使用下面的方法 
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => DetailPage(),
              //     settings: RouteSettings(
              //       arguments:People("yunliu",19),
              //     )
              //   )
              // );
        }),
        SizedBox(height: 20),
       
        RaisedButton(
          child: Text('无传参的压栈'),
          textColor: Colors.white ,
          // color: Colors.blue,
          color:Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary ,
          onPressed: (){
           //命名路由 进行跳转 不传参的情况
          // Navigator.pushNamed(context,'/search');
          //或者使用下面的方法
            Navigator.pushNamed(context,searchPage);
           
        }),

        SizedBox(height: 20),
       
        RaisedButton(
            child: Text('有传参的压栈'),
            textColor: Colors.white ,
            // color: Colors.blue,
            color:Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary ,
            onPressed: (){
              
              //命名路由的传参方式
              //带参传值
              // Navigator.pushNamed(context,'/detail',arguments:{'id':123});
              
              //或者 使用下面的方法 
               Navigator.pushNamed(context,detailPage,arguments:People("zhangsan", 18));
              //或者 使用下面的方法  这种方法报错
              //  Navigator.of(context).push(detailPage,arguments:People("lisi", 18));
              
              //下面的两种方式是 普通路由的方式 
              //或者 使用下面的方法  
              // Navigator.push(context, 
              //   MaterialPageRoute(
              //     builder: (context) => DetailPage(),
              //     settings: RouteSettings(
              //       arguments:People("wangwu",19),
              //     )
              //   )
              // );
              //或者 使用下面的方法 
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => DetailPage(),
              //     settings: RouteSettings(
              //       arguments:People("yunliu",19),
              //     )
              //   )
              // );
        }),

        SizedBox(height: 20),
       
        RaisedButton(
            child: Text('类似delegate black有回传数据的压栈方法'),
            textColor: Colors.white ,
            // color: Colors.blue,
            color:Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary ,
            onPressed: (){
        
               //接收路由返回值
               Navigator.pushNamed(context,detailPage,arguments:People('小明', 10)).then((result){
                  //需要将返回的数据 进行强转 
                  List listdata = result as List;
                  print('返回的结果${listdata}--');

                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      String str = result.toString();
                      return new AlertDialog(
                        content: new Text("您返回的内容为:${listdata}"),
                      );
                    },
                  );
               });

              /*
               //接收路由返回值
               Navigator.pushNamed(context,detailPage,arguments:People('小明', 10)).then((result){
                  //需要将返回的数据 进行强转 
                  People backModel = result as People;

                  print('返回的结果${backModel.age}--${backModel.name}');
                   /*弹窗显示返回的数据*/
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("返回的结果"),
                          content: Text("${backModel.name},${backModel.age}"),
                          actions: <Widget>[
                            FlatButton(
                              onPressed: () {
                                // Navigator.of(context).pop();
                                Navigator.pop(context);
                              },
                              child: Text("确定"))
                          ],
                        );
                      });
               });
               */
        }),
       
        SizedBox(height: 20),
       
        RaisedButton(
            child: Text('跳转到注册页面'),
            textColor: Colors.white ,
            // color: Colors.blue,
            color:Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary ,
            onPressed: (){
              
              //  Navigator.pushNamed(context,loginPage);
               Navigator.pushNamed(context,registFirstPage);
        }),
        SizedBox(height: 20),
       
        RaisedButton(
            child: Text('跳转到登录页面'),
            textColor: Colors.white ,
            // color: Colors.blue,
            color:Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary ,
            onPressed: (){
              
              // 和上面的代码 功能一样
               Navigator.pushNamed(context,loginPage);
        }),
      ],
    );
  }
}
