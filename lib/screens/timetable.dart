import 'dart:ui';

import 'package:edu_minitoe/consts/colors.dart';
import 'package:edu_minitoe/screens/drawer.dart';
import 'package:edu_minitoe/screens/home.dart';
import 'package:edu_minitoe/screens/notifications.dart';
import 'package:edu_minitoe/screens/timtabletabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:google_fonts/google_fonts.dart';

class TimetablePage extends StatefulWidget {
  const TimetablePage({super.key});

  @override
  State<TimetablePage> createState() => _TimetablePageState();
}

class _TimetablePageState extends State<TimetablePage> {
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
  int index=0;

    

  Color selectedColor = const Color.fromARGB(255, 228, 138, 198);

  final DefaultTabController _tabController=  const DefaultTabController(length: 1, 
               child: TabsPage());
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
    
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
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
                  Text('Timetable',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                  fontSize: 20,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
    
                  // Builder(
                  //    builder: (context) {
                  //      return Row(
                  //        children: [
                  //          IconButton(
                  //            icon: const Icon(Icons.arrow_back_ios),
                  //            onPressed: (){
                  //              if(_tabController.index > 0){
                  //                _tabController.animateTo(_tabController.index - 1,
                  //                duration: Duration(milliseconds: 500), curve: Curves.ease);
                  //              }else{
                  //                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Can't go back"),));
                  //              }
                  //            },
                  //          ),
                  //          Expanded(
                  //            child: TabBar(
                  //              isScrollable: true,
                  //              controller: _tabController,
                  //              labelStyle: const TextStyle(
                  //                color: Colors.black
                  //              ),
                  //              unselectedLabelColor: Colors.black,
                  //              labelColor: Colors.blue,
                  //              tabs: List.generate(20,(index)
                  //               {
                  //                  return Tab(
                  //                    text: "Tab $index",
                  //                  );
                  //                },
                  //              ),
                  //            ),
                  //          ),
                  //          IconButton(
                  //            icon: const Icon(Icons.arrow_forward_ios),
                  //            onPressed: (){
                  //              if(_tabController.index+1 < 20){
                  //                _tabController.animateTo(_tabController.index + 1,
                  //                duration: Duration(milliseconds: 500), curve: Curves.ease);
                  //              }else{
                  //                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Can't move forward"),));
                  //              }
                  //            },
                  //          ),
                  //        ],
                  //      );
                  //    }
                  //  ),
    
                  const SizedBox(height: 10,),
                  Stack(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(12),
                      child: BackdropFilter(filter: ImageFilter.blur(
                        sigmaX: 5,
                        sigmaY: 5,
                        // tileMode: TileMode.decal
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
                     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Flexible(
                            child: Row(mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      
                          Card(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Wrap(
                              children: [
                                Container(height:  MediaQuery.of(context).size.width/4,
                                      width: MediaQuery.of(context).size.width/4,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          topLeft: Radius.circular(10))),
                                  margin: const EdgeInsets.only(right: 10),
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
                                  child: Text('10:00-11:00',style: GoogleFonts.rubik(color: Colors.pink),),
                                )
                              ],
                            ),
                          ),
                      const SizedBox(width: 10,),
                      Flexible(
                        child: Container(height:  MediaQuery.of(context).size.width/4,
                                      width: MediaQuery.of(context).size.width/4,
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Subject',style: GoogleFonts.rubik(fontSize: 20,fontWeight: FontWeight.bold,
                              color: MinitoeColortheme.fontcolor),),
                              Text('Class',style: GoogleFonts.rubik(fontSize: 15,color: MinitoeColortheme.fontcolor),),
                              Text('Section',style: GoogleFonts.rubik(fontSize: 15,color: MinitoeColortheme.fontcolor),),
                              Text('Room',style: GoogleFonts.rubik(fontSize: 15,color: MinitoeColortheme.fontcolor),),
                            ],
                          ),
                        ),
                      ),
                     ],),
                   ),
                   Checkbox(
                    side: const BorderSide(color: Colors.grey,width: 1),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                   ],
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