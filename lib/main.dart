import 'package:edu_minitoe/screens/splash.dart';
import 'package:flutter/material.dart';

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


