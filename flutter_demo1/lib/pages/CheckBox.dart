import 'package:flutter/material.dart';


class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  
  // CheckBox 是复选框 radio 是单选框
  var flag = true;
  int sex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('check Box 的使用'),

      ),
      body: Column(
        
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,

       children: <Widget>[
          
          Row(
            children: <Widget>[
              Checkbox(
                value: this.flag,
                onChanged: (v){
                  setState(() {
                    this.flag = v;
                  });
              }),
               Checkbox(
                value: this.flag,
                onChanged: (v){
                  setState(() {
                    this.flag = v;
                  });
              })
            ],
          ),
          SizedBox(height:20),
          CheckboxListTile(
            value: this.flag,
            title: Text('标题'),
            activeColor: this.flag? Colors.pink:Colors.black,
            subtitle: Text('这是一个二级标题'),
            selected: true,
            onChanged: (v){
               setState(() {
                 this.flag = v;
               });
            },
             secondary: Icon(Icons.help),
          ),
          CheckboxListTile(
            value: this.flag,
            title: Text('标题'),
            activeColor: this.flag? Colors.pink:Colors.black,
            subtitle: Text('这是一个二级标题'),
            selected: true,
            onChanged: (v){
               setState(() {
                 this.flag = v;
               });
            },
             secondary: Icon(Icons.help),
          ),

           Row(
            children: <Widget>[
              Text('男'),
              Radio(
                value: 1,
                groupValue: this.sex,
                onChanged: (v){
                  setState(() {
                    this.sex = v;
                  }
                );
              }),
              SizedBox(width:20),
              Text('女'),
              Radio(
                value: 2,
                groupValue: this.sex,
                onChanged: (v){
                  setState(() {
                    this.sex = v;
                  }
                );
              })
            ],
          ),

          SizedBox(height:40),

          RadioListTile(
            value: 1, 
            groupValue: this.sex, 
            title: Text('标题'),
            subtitle: Text('这是二级标题'),
            secondary: Icon(Icons.help),
            //判断文字是否跟随选中状态
            selected: this.sex==1,
            onChanged: (v){
             setState(() {
               this.sex = v;
             });
          }),
          RadioListTile(
            value: 2, 
            groupValue: this.sex, 
            title: Text('标题'),
            subtitle: Text('这是二级标题'),
            secondary: Icon(Icons.help),
            //修改选中的颜色
            activeColor: this.sex == 2 ? Colors.pink:Colors.black,
            selected: true,
            onChanged: (v){
              setState(() {
               this.sex = v;
             });
          }),

          Switch(value: this.flag, 
            onChanged: (v){
               setState(() {
                 this.flag = v;
             });
            }
          ),


       ],

      ),
    );
  }
}
