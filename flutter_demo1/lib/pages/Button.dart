
import 'package:flutter/material.dart';


class ButtonDemoPage extends StatelessWidget {
  const ButtonDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('button 演示页面')
      ),
      
      //浮动按钮
      floatingActionButton: FloatingActionButton(
        
        child: Icon(Icons.add,color: Colors.black,size: 40,),
        backgroundColor: Colors.pink,
        elevation: 20,
        highlightElevation: 20,
        
        onPressed: (){
         print('浮动按钮点击');
      }),
      //浮动按钮的位置  centerDocked  
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              
              //默认是内容自适应的
              RaisedButton(
                child: Text('普通按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print('普通按钮点击');
                }
              ),
              SizedBox(width:5),
              RaisedButton(
                child: Text('不可用按钮'),
                color: Colors.blue,
                //不可用的背景颜色 和字体颜色
                disabledColor: Colors.black87,
                disabledTextColor: Colors.blue,
                textColor: Colors.white,
                //不可用状态
                onPressed: null,
                // onPressed: (){
                //   print('普通按钮点击');
                // }
              ),
              SizedBox(width:5), 
              RaisedButton(
                child: Text('阴影按钮'),
                color: Colors.blue,
                // 阴影效果的按钮
                elevation: 10,
                textColor: Colors.white,
                onPressed: (){
                  print('普通按钮点击');
                }
              ),
              SizedBox(width:5), 

              RaisedButton.icon(
                icon: Icon(Icons.search),
                label: Text('图标按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print('图标按钮');
                }
              ),
            ],
          ),
          SizedBox(height:20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              //在外面包裹一个 Container 
              Container(
                width: 180,
                height: 50,
                child: RaisedButton(
                  child: Text('设置宽高的按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: (){
                    print('宽高按钮点击');
                  }
                ),
              ),
              
              
            ],
          ),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              // 弹性布局
               Expanded(
                child: Container(
                  height: 60,
                  //可以设置 margin  和 padding 
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  // margin: EdgeInsets.all(100),
                  // padding: EdgeInsets.all(10),
                  child:  RaisedButton(
                  child: Text('自适应按钮'),
                  color: Colors.blue,
                  //阴影效果
                  elevation: 20,
                  textColor: Colors.white,
                  onPressed: (){
                    print('自适应按钮点击');
                  }
                 ),
                )
              ),
            ],
          ),
           SizedBox(height:10),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              RaisedButton(
                child: Text('圆角按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                onPressed: (){
                  print('圆角按钮点击');
                }
              ),
              Container(
                height: 80,
                child: RaisedButton(
                  child: Text('圆形按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  shape: CircleBorder(
                    //边框颜色
                    side: BorderSide(
                      color: Colors.red,
                      width: 2,
                    )
                  ),
                  onPressed: (){
                    print('圆形点击');
                  }
                ), 
              ),

              FlatButton(
                child: Text('FlatButton按钮'),
                // color: Colors.blue,
                // textColor: Colors.yellow,
                onPressed: (){
                    print('圆形点击');
                }, 
              ),

            ],
          ),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //边框按钮
              OutlineButton(
                child: Text('OutlineButton'),
                // color 属性没效果
                // color: Colors.red,
                textColor: Colors.blue,
                borderSide: BorderSide(
                  color: Colors.orange,
                  width: 5,
                ),
                onPressed: (){
                   print('OutlineButton 点击');
                }
              ),
            ],
          ),

          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 50,
                  margin: EdgeInsets.all(10),
                  //边框按钮
                  child:OutlineButton(
                      child: Text('OutlineButton'),
                      // color 属性没效果
                      // color: Colors.red,
                      textColor: Colors.blue,
                      borderSide: BorderSide(
                        color: Colors.orange,
                        width: 5,
                      ),
                      onPressed: (){
                        print('OutlineButton 点击');
                      }
                    ),
                )
              )
            ],
          ),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              //button 组
              ButtonBar(
                children: <Widget>[
                   RaisedButton(
                     child: Text('-登录-'), 
                     color: Colors.blue,
                     textColor: Colors.white,
                     elevation: 20,
                     onPressed: (){
                       print('登录按钮');
                   }),
                  RaisedButton(
                     child: Text('-注册-'), 
                     color: Colors.blue,
                     textColor: Colors.white,
                     elevation: 20,
                     onPressed: (){
                       print('注册 按钮');
                   }),
                    
                   MyButton(text:'自定义按钮',height:60,width:100,pressed:(){

                    print('自定义按钮');
                  }),
                 
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}


//自定义类型 
class MyButton extends StatelessWidget {

  // const MyButton({Key key}) : super(key: key);
 final text;
 final pressed;
 final double width;
 final double height;
 //自定义方法  有默认数据 宽高80 
 const MyButton({this.text='',this.pressed=null,this.width=80,this.height=80});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,

      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed
      ),
    );
  }
}