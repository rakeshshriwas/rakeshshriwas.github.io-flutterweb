import 'package:flutter/material.dart';
import 'package:flutter_responsive/screens/body.dart';
import 'package:flutter_responsive/utils/app_color.dart';

import 'screens/header.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter to fly !',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        gradient: LinearGradient(
            colors: [AppColors.white1, AppColors.white2],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[HeaderScreen(), BodyScreen()],
          ),
        ),
      ),
    );
  }
}
