
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  
  @override
  void initState(){
    super.initState();
  }
 

  @override
  Widget build(BuildContext context) {
    
    return Theme(
     
      data: ThemeData(),
      child: 
        Drawer(
        width: 230,
        backgroundColor: Colors.pinkAccent,
        child: ListView(
        padding: EdgeInsets.zero,
        children:     <Widget>[
        SizedBox(height: 300,
          child: DrawerHeader(margin: const EdgeInsets.all(0),
            decoration: const BoxDecoration(shape: BoxShape.rectangle,
            // borderRadius: BorderRadius(5) ,
              color: Colors.pinkAccent,
            ),
            child: Column(
              children: [
                CircleAvatar(radius: 85,backgroundColor: Colors.pink[200],
                  child: const CircleAvatar(backgroundColor: Colors.pinkAccent,radius: 75,
                  ),
                ),
                Text('Name',style: GoogleFonts.rubik(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  Text('Designation',style: GoogleFonts.rubik(color: Colors.white,fontSize:15 ),),
                  Text('ID',style: GoogleFonts.rubik(color: Colors.white,fontSize: 15),)
              ],
            )
          ),
        ),
        const ListTile(
          leading: Icon(Icons.home),
          title: Text('Home',style: TextStyle(color: Colors.white,fontSize: 20),),
        ),
        const ListTile(
          leading: Icon(Icons.calendar_month),
          title: Text('Timetable',style: TextStyle(color: Colors.white,fontSize: 20),),
        ),
        const ListTile(
          leading: Icon(Icons.class_),
          title: Text('Classes',style: TextStyle(color: Colors.white,fontSize: 20),),
        ),
        const ListTile(
          leading: Icon(Icons.report),
          title: Text('Reports',style: TextStyle(color: Colors.white,fontSize: 20),),
        ),
      ],
     ),
    ),
  );
 }
}
 
