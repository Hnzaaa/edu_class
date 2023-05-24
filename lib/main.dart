import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:edu_minitoe/screens/login.dart';
import 'package:edu_minitoe/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minitoe',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      routes: {
      '/splash': (context) => const MySplashPage(),
       },  
      initialRoute: "/splash",
      // home: MySplashPage(key: key,)
    );
  }
}


