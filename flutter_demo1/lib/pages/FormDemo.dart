import 'package:flutter/material.dart';


class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key key}) : super(key: key);

  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  
  String userName;
  int sex = 1;
  String info;

  List hobby = [
    {
      "checked": true,
      "title":'吃饭'
    },
    {
      "checked": true,
      "title":'睡觉'
    },
    {
      "checked": true,
      "title":'打豆豆'
    },
  ];
  
  //定义方法  有返回值的
  List<Widget> _getHobby(){

    List <Widget> tempList = [];
    for (var i = 0; i < this.hobby.length; i++) {
      // tempList.add(Text(this.hobby[i]['title']));
      tempList.add( 
        Row(
          children: <Widget>[
              Text(this.hobby[i]['title']),
              Checkbox(
                value: this.hobby[i]['checked'], 
                onChanged: (v){
                  setState(() {
                    this.hobby[i]['checked'] = v;
                  });
                }),
          ],
        )
      );
    }
    return tempList;
  }
  
  //方法 调用方法 不用带 括号  没有返回值
  void _setChange(value){
    setState(() {
      this.sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title:Text('信息登记系统'),
     ),
     body: Padding(
       padding: EdgeInsets.all(20),
       child: Column(
         children: <Widget>[
           TextField(
             decoration: InputDecoration(
               hintText: '请输入用户信息'
             ),
             onChanged: (v){
               setState(() {
                 this.userName = v;
               });
             },
           ),
           SizedBox(height:20),

           Row(
             children: <Widget>[
               Text('男'),
               Radio(value: 1, groupValue: this.sex, 
                // onChanged: (v){
                //   setState(() {
                //     this.sex = v;
                //   });
                // }
                onChanged: this._setChange,
               ),
               SizedBox(width:20),
               Text('女'),
              //  Radio(value: 2, groupValue: this.sex, onChanged: (v){
              //    setState(() {
              //      this.sex = v;
              //    });
              //  }),
               Radio(value: 2, groupValue: this.sex, 
                   onChanged: this._setChange,)
               
             ],

           ),
           
           SizedBox(height: 20,),
           

           Wrap(
             children: this._getHobby(),
           ),

           TextField(
             maxLines: 4,
             keyboardType: TextInputType.emailAddress,
             textInputAction: TextInputAction.done,
             decoration: InputDecoration(
               hintText: '请输入描述信息',
               border : OutlineInputBorder() 
             ),
             onChanged: (v){
                 setState(() {
                   this.info = v;
                 });
             },
           ),

           SizedBox(height:20),

           Container(
             width: double.infinity,
             height: 45,
             child: RaisedButton(
               child: Text('登录'),
               color: Colors.blue,
               textColor: Colors.white,
               onPressed: (){
                  
                  print('${this.sex}---name---${this.userName}');
               }
              ),


           )

         ],
       ),
      ),
    );
  }
}