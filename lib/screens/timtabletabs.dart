import 'package:edu_minitoe/screens/drawer.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {


   int index=0;

  
  @override
  void initState(){
    super.initState();
  
  }

  @override
  Widget build(BuildContext context) {
   
    
    return Scaffold(
      drawer:   const DrawerPage(),
    body:
      Container()
    );
  }
  }



