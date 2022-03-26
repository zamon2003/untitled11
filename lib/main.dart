import 'package:flutter/material.dart';
import 'package:untitled11/pages/home_page.dart';
import 'package:untitled11/pages/page1.dart';
import 'package:untitled11/pages/page2.dart';
import 'package:untitled11/pages/page3.dart';
import 'package:untitled11/pages/page4.dart';
import 'package:untitled11/pages/page5.dart';
import 'package:untitled11/pages/sidebar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Images App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        SideBar.id: (context) => SideBar(),
        Page1.id: (context) => Page1(),
        Page2.id: (context) => Page2(),
        Page3.id: (context) => Page3(),
        Page4.id: (context) => Page4(),
        Page5.id: (context) => Page5(),
      },
    );
  }
}
