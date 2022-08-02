import 'package:flutter/material.dart';
import 'package:flutter_my_app/pages/firstpage.dart';
import 'package:flutter_my_app/pages/home_page.dart';
import 'package:flutter_my_app/pages/real_home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: FirstPage(),
    );
  }
}

