import 'package:flutter/material.dart';

import '../pages/Tabs.dart';
import '../pages/Search.dart';
import '../pages/Form.dart';
import '../pages/Detail.dart';

import '../pages/ProductInfo.dart';

//登录注册模块
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';

import '../pages/AppBarDemo.dart';
import '../pages/tabs/TabBarControl.dart';

import '../pages/UserInfo.dart';
import '../pages/Button.dart';
import '../pages/TextFileDemo.dart';
import '../pages/CheckBox.dart';
import '../pages/FormDemo.dart';

import '../pages/DatePicker.dart';
import '../pages/Swiper.dart';
import '../pages/Dialog.dart';
import '../pages/MapJson.dart';



//定义页面常量  跳转路由的时候 更方便
const tabbar = "/tabs";
const fomePage = "/form";
const searchPage = "/search";
const detailPage = "/detail";
const loginPage = "/login";
const registFirstPage = "/registFirst";
const registSecondPage = "/registSecond";
const infoPage = "/info";
const appBarDemo = "/AppBarDemo";
const tabbarDemo = "/tabbarDemo";
const userInfoPage = "/userInfo";

const buttonPage = "/button";
const textfilePage = "/textfile";
const checkboxPage = "/checkbox";
const formdemoPage = "/formdemo";
const datePickerPage = "/datePicker";
const swiperPage = "/swiper";
const dialogPage = "/dialog";
const mapjsonPage = "/mappage";



//路由方式1 
var RoutePath = {

  "$tabbar": (context) => Tabs(),
  "$fomePage": (context) => FomePage(),
  "$searchPage": (context) => SearchPage(),
  "$detailPage": (context) => DetailPage(),
  "$infoPage": (context) => ProductPage(),
  "$loginPage": (context) => LoginPage(),
  "$registFirstPage": (context) => RegistFirstPage(),
  "$registSecondPage": (context) => RegistSecPage(),
  "$appBarDemo": (context) => AppBarDemoPage(),

  "$tabbarDemo": (context) => TabBarControlPage(),
  "$userInfoPage": (context) => UserInfoPage(),
  "$buttonPage": (context) => ButtonDemoPage(),
  "$textfilePage": (context) => TextFileDemoPage(),
  "$checkboxPage": (context) => CheckBoxPage(),
  "$formdemoPage": (context) => FormDemoPage(),
  "$datePickerPage": (context) => DatePickerPage(),
  "$swiperPage": (context) => SwiperPage(),
  "$dialogPage": (context) => DialogPage(),
  "$mapjsonPage": (context) => MapEncodePage(),


};


/*
//路由方式2 
//配置路由器
 final routes = {
    //根路由  
    '/':(context) => Tabs(),
    // 不传参的路由
    '/form':(context) => FomePage(), 
    '/search':(context) => SearchPage(),
    // 传参的路由 
    '/detail':(context,{arguments})=>DetailPage(arguments:arguments),
 };

//固定写法
//通用路由
var onGenerateRoute = (RouteSettings settings){
    //统一处理  固定写法
    final String name = settings.name;
    final Function pageContentBuilder = routes[name];
    
    if(pageContentBuilder != null){
      if(settings.arguments !=  null){
        final Route route = MaterialPageRoute(
            builder: (context) =>
                pageContentBuilder(context, arguments: settings.arguments)
            );
          return route;
      }else{
        final Route route = MaterialPageRoute(
          builder: (context)=>
            pageContentBuilder(context));
          return route;
      }
    } 
  };

*/