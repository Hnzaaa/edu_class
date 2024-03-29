
import 'package:edu_minitoe/consts/colors.dart';
import 'package:edu_minitoe/screens/navpage.dart';
import 'package:edu_minitoe/screens/report.dart';
import 'package:edu_minitoe/screens/timetable.dart';
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
        backgroundColor: MinitoeColortheme.darkpink,
        child: ListView(
        padding: EdgeInsets.zero,
        children:     <Widget>[
        SizedBox(height: 300,
          child: DrawerHeader(margin: const EdgeInsets.all(0),
            decoration: const BoxDecoration(shape: BoxShape.rectangle,
            // borderRadius: BorderRadius(5) ,
              color: MinitoeColortheme.darkpink,
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(radius: 85,backgroundColor: Colors.pink[100],
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
          ListTile(
          leading: const Icon(Icons.home,color: Colors.white,),
          title: const Text('Home',style: TextStyle(color: Colors.white,fontSize: 20),),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const NavPage()));
          },
        ),
          ListTile(
          leading: Container(height:30,width: 30 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/timetable.png'),
                ),),
                ),
          title: const Text('Timetable',style: TextStyle(color: Colors.white,fontSize: 20),),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const TimetablePage()));
          },
        ),
          ListTile(
          leading: Container(height:35,width: 35 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/classes.png'),
                ),),
                ),
          title: const Text('Classes',style: TextStyle(color: Colors.white,fontSize: 20),),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const NavPage()));
          },
        ),
          ListTile(
          leading: Container(height:35,width: 35 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/report.png'),
                ),),
                ),
          title: const Text('Reports',style: TextStyle(color: Colors.white,fontSize: 20),),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReportPage()));
          },
        ),
      ],
     ),
    ),
  );
 }
}
 
