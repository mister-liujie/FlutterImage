
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';


const String MIN_DATETIME = '2010-05-12';
const String MAX_DATETIME = '2021-11-25';
const String INIT_DATETIME = '2019-05-17';
const String DATE_FORMAT = 'MM月|d日,yyyy年';

bool _showTitle = true;

class DatePickerPage extends StatefulWidget {
  DatePickerPage({Key key}) : super(key: key);
  @override
  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
 
  //打印当前时间
  var _nowDate = DateTime.now();
  //时间
  // var _nowTime = TimeOfDay(hour: 12, minute: 30);
  var _nowTime = TimeOfDay.now();
   
  //打印当前时间
  var _threeDate = DateTime.now();

  DateTime _dateTime;
  String _format = 'yyyy-MM-dd HH';
  DateTimePickerLocale _locale = DateTimePickerLocale.en_us;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     print('打印当前时间');
     print(_nowDate);
     print(_nowDate.millisecondsSinceEpoch); 
     print(DateTime.fromMillisecondsSinceEpoch(_nowDate.millisecondsSinceEpoch));  
     print('--当前时间--${_nowTime}-----'); 
    _dateTime = DateTime.parse(INIT_DATETIME);
  }
  
  //日期选择器
  _showDatePicker() async {
    //系统自带的时间选择器
    // showDatePicker(
    //   context: context, 
    //   initialDate: _nowDate, 
    //   firstDate: DateTime(1980),
    //   lastDate: DateTime(2080),
    // ).then((onValue){
    //   print('--选择的日期--${onValue}--');
    // });
      
    //使用 .then 可以获取方法 使用 await 也可以 调用 await 保修使用 async 方法 

    var result = await showDatePicker(
      context: context, 
      initialDate: _nowDate, 
      firstDate: DateTime(1980),
      lastDate: DateTime(2080),
      //设置时区
      // locale: Locale('zh'),
    );
    print('--当前时间--${result}');
    setState(() {
      if(result != null){
          this._nowDate = result;
       }
    });
  }
   
  //时间选择器R
  _showTimePicker() async{
     
    //  showTimePicker(
    //    context: context, 
    //    initialTime: _nowTime,
    // ).then((onValue){
    //   print('--选择的当前的时间--${onValue}');
    // });
       
    var result = await showTimePicker(
       context: context, 
       initialTime: _nowTime,
    ); 
     print('--选择的当前的时间--${result}');
     setState(() {
       if(result != null){
           this._nowTime = result;
       }
    });

  } 
 
 //三方库时间选择器
 
 void _threeShowDatePicker(){

    DatePicker.showDatePicker(
      context,
      onMonthChangeStartWithFirstDate: true,
      pickerTheme: DateTimePickerTheme(
        showTitle: _showTitle,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse(MIN_DATETIME),
      maxDateTime: DateTime.parse(MAX_DATETIME),
      initialDateTime: _dateTime,
      dateFormat: 'yyyy-MM-dd',
      locale: _locale,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }
  
  
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('时间-日期选择器'),
       ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[

           InkWell(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  // Text('${ this._nowDate}'),

                  Text(formatDate(this._nowDate,[yyyy, '-', mm, '-', dd])),
                  Icon(Icons.arrow_drop_down) 
              ],
            ),
            // onTap: (){
            //     print('--选择日期---');
            //     _showDatePicker();
            // },
            onTap: _showDatePicker,
           ),

           InkWell(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  // Text('${this._nowTime.format(context)}'),
                   Text('${this._nowTime}'),
                  Icon(Icons.arrow_drop_down) 
              ],
            ),
            onTap: _showTimePicker,
           ),
           
            InkWell(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Text('三方库时间选择器'),
                  // Text('${this._dateTime}'),
                  Text(formatDate(this._dateTime,[yyyy, '-', mm, '-', dd])),
                  Icon(Icons.arrow_drop_down) 
              ],
            ),
            onTap: _threeShowDatePicker,
           ),
          
         ],
       ),
    );
  }
}
