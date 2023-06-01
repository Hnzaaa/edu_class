import 'dart:ui';

import 'package:edu_minitoe/consts/colors.dart';
import 'package:edu_minitoe/screens/drawer.dart';
import 'package:edu_minitoe/screens/home.dart';
import 'package:edu_minitoe/screens/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:toggle_switch/toggle_switch.dart';

class AttendencePage extends StatefulWidget {
  const AttendencePage({super.key});

  @override
  State<AttendencePage> createState() => _AttendencePageState();

}

class _AttendencePageState extends State<AttendencePage> {

  TextEditingController dateInput = TextEditingController();
  
  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 2;
  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = true;
  bool showUnselectedLabels = true;

  Color selectedColor = const Color.fromARGB(255, 228, 138, 198);
  @override
  void initState(){
    dateInput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      drawer:   const DrawerPage(),
    body:SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                          // borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image:
                            AssetImage(
                              'assets/bg1.png',
                            ),
                            fit: BoxFit.cover,
                          )),
                  ),

            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18,right: 18,left: 18),
                    child: Row(
                      children: [InkWell(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                      },
                        child: const Icon(Icons.arrow_back)),
                        const SizedBox(width: 10,),
                        Hero(tag: 'tag',
                        child: Image.asset('assets/cropped-mintie-png.png',height: 60,)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18,left: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     Builder(
                        builder: (context) => GestureDetector(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            child: const Icon(
                              Icons.sort_rounded,
                              // size: 30,
                            )),
                      ),
                      Container(width: 5,color: Colors.black,),
                      const SizedBox(width: 11,),
                      SizedBox(width: 200,height: 33,
                        child: TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.black)
                          ),
                          // hintText: 'Search',
                          // hintStyle: TextStyle(
                          //   color: Colors.grey,
                          //   fontSize: 18
                          // ),
                          // prefixIcon:
                        ),
                                          ),
                      ),
                    const SizedBox(width: 11,),
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationPage()));
                    },
                      icon: const Icon(Icons.notifications_outlined)),
                  
                    ],
                  ),
                ),
                // const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 18),
                  child: Text('Attendance',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                  fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(width: MediaQuery.of(context).size.height / 4,
                             padding: const EdgeInsets.all(10),
                             height: MediaQuery.of(context).size.width / 3,
                             child: Center(
                                 child: TextField(
                               controller: dateInput,
                               //editing controller of this TextField
                               decoration: InputDecoration(filled: true,fillColor: Colors.white,isDense: true,
                               border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                                   icon:   Icon(Icons.calendar_today,color: Colors.pink,), //icon of text field
                                   // labelText: "Enter Date"
                                   ),
                               readOnly: true,
                               //set it true, so that user will not able to edit text
                               onTap: () async {
                                 DateTime? pickedDate = await showDatePicker(
                                     context: context,
                                     initialDate: DateTime.now(),
                                     firstDate: DateTime(1900),
                                     //DateTime.now() - not to allow to choose before today.
                                     lastDate: DateTime(2500));
                              
                                 if (pickedDate != null) {
                                   print(
                                       pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                   String formattedDate =
                                       DateFormat('EEE,dd-MM-yyyy').format(pickedDate);
                                   print(
                                       formattedDate); //formatted date output using intl package =>  2021-03-16
                                   setState(() {
                                     dateInput.text =formattedDate; //set output date to TextField value.
                                   });
                                 } else {}
                               },
                             ))),
                             Flexible(
                              child: SizedBox(width: MediaQuery.of(context).size.height/7,
                                height: MediaQuery.of(context).size.width / 5,
                                  // color: Colors.white,
                                  child: Column(
                                    children: [
                                      Text('Total Students',style: GoogleFonts.rubik(fontSize: 15),),
                                        Expanded(child: Row(
                                        children: [
                                          Text('20',style: GoogleFonts.rubik(color: Colors.black,fontSize: 15),),
                                          Icon(Icons.boy),
                                          Text('-10',style: GoogleFonts.rubik(color: Colors.blue,fontSize: 15),),
                                          Icon(Icons.girl),
                                          Text('-10',style: GoogleFonts.rubik(color: Colors.pink,fontSize: 15),)
                                        ],
                                      ))
                                    ],
                                  ),))
                      ],
                    ),
                  ),
                ),
                Card(
                      color: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Wrap(
                        children: [
                          Container(height:  MediaQuery.of(context).size.width/8,
                                width: MediaQuery.of(context).size.width/8,
                            decoration: const BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                            margin: const EdgeInsets.only(right: 10),
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                            child: Text('A',style: GoogleFonts.rubik(color: Colors.white),),
                          )
                        ],
                      ),
                     ),
                ClipRRect(
                child: BackdropFilter(filter: ImageFilter.blur(
                  sigmaX: 1,
                  sigmaY: 1,
                  // tileMode: TileMode.decal
                ),
                blendMode: BlendMode.modulate,
                child: Container( margin: const EdgeInsets.only(bottom: 6),
                  height: 110,
                  decoration: const BoxDecoration(
                     color: Color.fromARGB(108, 255, 255, 255),
                     boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 255, 250, 250),
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
                    // borderRadius: BorderRadius.circular(12),
                  ),
            child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    const CircleAvatar(radius: 40,backgroundColor: Color.fromARGB(255, 247, 142, 177),),
                    const SizedBox(width: 15,),
                    Flexible(
                      child: Container(height: MediaQuery.of(context).size.width/7,
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name',style: GoogleFonts.rubik(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text('ID',style: GoogleFonts.rubik(fontSize: 15),),
                            
                          ],
                        ),
                      ),
                    ),
                  ],),
                ),
                  Flexible(child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     ToggleSwitch(
                      animate: true,
                      animationDuration: 300,
                      // borderColor: [Color.fromARGB(255, 119, 152, 59), Color.fromARGB(255, 139, 195, 148), 
                      //Color.fromARGB(255, 255, 196, 0),Color.fromARGB(255, 242, 117, 0), 
                      //Color.fromARGB(255, 191, 76, 47), Color.fromARGB(255, 213, 79, 79)],
                         minWidth: 70.0,
                         dividerColor: Colors.black,
                         cornerRadius: 10.0,
                         activeBgColors: const [[Color.fromARGB(255, 110, 226, 110), Color.fromARGB(255, 53, 153, 40)], 
                               [Color.fromARGB(255, 189, 33, 33), Color.fromARGB(255, 224, 163, 163)]],
                         activeFgColor: Colors.white,
                         inactiveBgColor: Colors.grey,
                         inactiveFgColor: Colors.white,
                         initialLabelIndex: 0,
                         totalSwitches: 2,
                         labels: const ['Present', 'Absent'],
                         radiusStyle: false,
                         onToggle: (index) {
                           print('switched to: $index');
                         },
                       ),
                  ],
                ))
              ],
            ),
            ),))),
              ],
            )
          ],
        ),
      ),
        

        bottomNavigationBar: Container(height: 60,
        color: const Color.fromARGB(255, 9, 49, 95),
          child: SnakeNavigationBar.color(
                height: 50,
                behaviour: snakeBarStyle,
                snakeShape: snakeShape,
                //  shape: bottomBarShape,
                //  padding: padding,
                  backgroundColor: const Color.fromARGB(255, 9, 49, 95),
                  snakeViewColor: selectedColor,
                  selectedItemColor:snakeShape == SnakeShape.indicator ? selectedColor : null,
                  unselectedItemColor: Colors.white,
                  showUnselectedLabels: showUnselectedLabels,
                  showSelectedLabels: showSelectedLabels,
                  currentIndex: _selectedItemPosition,
                  onTap: (index) => setState(() => _selectedItemPosition = index),
                  items:      [
            BottomNavigationBarItem(activeIcon: Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/timetable.png'),
                ),),
                ),
                icon: Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/timetable.png'),
                ),),
                ),
                label: 'Timetable'),
            BottomNavigationBarItem(activeIcon:  Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/classes.png'),
                ),),
                ),
                icon:  Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/classes.png'),
                ),),
                ),
                label: 'Classes'),
            BottomNavigationBarItem(activeIcon: Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/attendence.png'),
                ),),
                ),
              icon:  Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/attendence.png'),
                ),),
                ),
            label: 'Attendance'),
            BottomNavigationBarItem(activeIcon:  Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/report.png'),
                ),),
                ),
                icon:  Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/report.png'),
                ),),
                ),
                label: 'Report'),
            BottomNavigationBarItem(
              activeIcon: Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/assembly.png'),
                ),),
                ),
                icon: Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/assembly.png'),
                ),),
                ),
                label: 'Assembly')
                ],
                selectedLabelStyle: const TextStyle(fontSize: 24,color: Colors.white),
                unselectedLabelStyle: const TextStyle(fontSize: 10,color: Colors.white),
            ),
        ),
      
    );
  }
}