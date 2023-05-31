import 'dart:ui';

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:edu_minitoe/consts/colors.dart';
import 'package:edu_minitoe/screens/drawer.dart';
import 'package:edu_minitoe/screens/home.dart';
import 'package:edu_minitoe/screens/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:google_fonts/google_fonts.dart';
class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedItemPosition = 2;
  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = true;
  bool showUnselectedLabels = true;
  bool isChecked = false;

  Color selectedColor = const Color.fromARGB(255, 228, 138, 198);
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Flexible(
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
                    Row(
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
                    // const SizedBox(height: 20,),
                    // Text('Report',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                    // fontSize: 20,fontWeight: FontWeight.bold),),
                    Flexible(
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DropdownButton<String>(underline: Container(
                                height: 2,width: 500,
                                color: Colors.grey,
                              ),
                            items: <String>['A', 'B', 'C', 'D'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                          DropdownButton<String>(underline: Container(
                                height: 2,width: 500,
                                color: Colors.grey,
                              ),
                           items: <String>['A', 'B', 'C', 'D'].map((String value) {
                             return DropdownMenuItem<String>(
                               value: value,
                               child: Text(value),
                             );
                           }).toList(),
                           onChanged: (_) {},
                         )
                        ],
                      ),
                    ),
                    
                        
                     Flexible(
                       child: DefaultTabController(
                              length: 4,
                              child: Container( 
                                child: Column(
                                  children: <Widget>[
                                    ButtonsTabBar(
                                      // physics: const NeverScrollableScrollPhysics() ,
                                      duration: 0,
                                      elevation: 5,
                                      radius: 12,
                                      // contentPadding: const EdgeInsets.all(14) ,
                                      contentPadding: const EdgeInsets.symmetric(horizontal: 14),
                                      borderWidth: 0,
                                      // backgroundColor: Colors.pink,
                                      // borderColor: Colors.transparent,
                                      unselectedBackgroundColor: Colors.pink,
                                      center: true,
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: <Color>[
                                            Color.fromARGB(255, 70, 13, 161),
                                            Color.fromARGB(255, 105, 25, 210),
                                            Color.fromARGB(255, 98, 113, 247),
                                          ],
                                        ),
                                      ),
                                      unselectedLabelStyle: const TextStyle(color: Colors.white),
                                      labelStyle: const TextStyle(color: Colors.white,),
                                      height: 100,
                                      tabs: const [
                                         Tab(
                                          text: "\nCompletion\n  Report",
                                          // child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                          //   children: [Icon(Icons.report),
                                          //     Text('Completion Report')
                                          //   ],
                                          // ),
                                         ),
                                         Tab(
                                           text: "\n Marks\nReport",
                                         ),
                                         Tab(
                                         text: "\n Skill\nReport",),
                                         Tab(
                                         text: "\n Child\nReport",),
                                       ],
                                    ),
                                      Expanded(
                                      child: TabBarView(
                                        children:  <Widget>[
                                          Container(
                                            child: const Expanded(
                                            child: TabBar( 
                                              tabs: <Widget>[
                                              Tab(text: 'Completed',),
                                              Tab(text: 'Pending',
                                              ),
                                            ],
                                            labelColor: MinitoeColortheme.fontcolor,
                                            ),
                                             ),
                                          ),
                                           const Center(
                                             child: Text('Marks Report'),
                                           ),
                                           const Center(
                                             child: Text('Skill Report'),
                                           ),
                                           const Center(
                                             child: Text('Child Report'),
                                           ),
                                         ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                     ),
                     const SizedBox(height: 10,),
                    // Flexible(child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Flexible(child: Container(height: MediaQuery.of(context).size.height/9,
                    //     width: MediaQuery.of(context).size.width/4,
                    //       child: Card(color: Colors.purple,
                    //       child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: [
                    //           const Icon(Icons.abc,color: Colors.white,),
                    //           Text('Completion Report',style: GoogleFonts.rubik(color: Colors.white),textAlign: TextAlign.center,)
                    //         ],
                    //       ),),
                    //       )),
    
                    //     Flexible(child: Container(height: MediaQuery.of(context).size.height/9,
                    //     width: MediaQuery.of(context).size.width/4,
                    //     child: Card(color: Colors.pink,child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: [
                    //           const Icon(Icons.abc,color: Colors.white,),
                    //           Text(' Marks  Report ',style: GoogleFonts.rubik(color: Colors.white),
                    //           textAlign: TextAlign.center,softWrap: true,)
                    //         ],
                    //       ),),
                    //       )),
    
                    //     Flexible(child: Container(height: MediaQuery.of(context).size.height/9,
                    //     width: MediaQuery.of(context).size.width/4,
                    //     child: Card(color: Colors.pink,child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: [
                    //           const Icon(Icons.abc,color: Colors.white,),
                    //           Text(' Skill    Report ',style: GoogleFonts.rubik(color: Colors.white),
                    //           textAlign: TextAlign.center,softWrap: true,)
                    //         ],
                    //       ),),
                    //       )),
    
                    //     Flexible(child: Container(height: MediaQuery.of(context).size.height/9,
                    //     width: MediaQuery.of(context).size.width/4,
                    //     child: Card(color: Colors.pink,child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                    //         children: [
                    //           const Icon(Icons.abc,color: Colors.white,),
                    //           Text(' Child  Report ',style: GoogleFonts.rubik(color: Colors.white),
                    //           textAlign: TextAlign.center,softWrap: true,)
                    //         ],
                    //       ),),
                    //       )),
                    //   ],
                    // )),
                    Stack(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(12),
                      child: BackdropFilter(filter: ImageFilter.blur(
                        sigmaX: 5,
                        sigmaY: 5,
                      ),
                      blendMode: BlendMode.modulate,
                      child: Container( margin: const EdgeInsets.only(bottom: 6),
                        height: 110,
                        decoration:   BoxDecoration(
                           color: const Color.fromARGB(108, 255, 255, 255),
                           boxShadow: const [BoxShadow(
                        color: Color.fromARGB(255, 255, 250, 250),
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                      ],
                       borderRadius: BorderRadius.circular(12),
                     ),
                    ))),

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: SizedBox(height: 100,width: MediaQuery.of(context).size.width,
                          child:   Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Flexible(child: Card(child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('aaa',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,fontSize: 15),),
                                  ))),
                                  Text('-',style: GoogleFonts.rubik( fontSize: 15)),
                                  Text('Language Introduction',style: GoogleFonts.rubik( fontSize: 15))
                                ],
                              ),
                               Row(
                                 children: [
                                   Flexible(child: Card(child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('aaa',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,fontSize: 15),),
                                  ))),
                                  Text('-',style: GoogleFonts.rubik( fontSize: 15)),
                                  Text('Letters  A to F',style: GoogleFonts.rubik( fontSize: 15))
                                 ],
                               ),
                            ],
                          ),
                         ),
                       ),


                  ]
                ),
                    
                 
                  
                  ],
                ),
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
              label: 'Attendence'),
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
        
      ),
    );
  }
}