// @dart=2.9

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_services_mobile_flutter/screen/home_screen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Services',
      home: HomePageScreen(),
    );
  }
}
