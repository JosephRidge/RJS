import 'package:flutter/material.dart';
import 'package:mountainapp/pages/home/home.dart';
import 'package:mountainapp/pages/landing/mountsapp.dart';
import 'package:mountainapp/pages/splash/splashpage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      home: MountsApp()//SplashPage(),
    );
  }
}
