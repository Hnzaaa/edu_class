 
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


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

  Gradient selectedGradient =
      const LinearGradient(colors: [Colors.red, Colors.amber]);
  Gradient unselectedGradient =
      const LinearGradient(colors: [Colors.red, Color.fromARGB(255, 255, 255, 255)]);

  
  @override
  void initState(){
    super.initState();
     
  }
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: 
      SizedBox(
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
                  Hero(tag: 'tag',
                  child: Image.asset('assets/cropped-mintie-png.png',height: 60,)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: (){}, 
                      icon: const Icon(Icons.sort_rounded,))  ,
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
                    IconButton(onPressed: (){}, 
                      icon: const Icon(Icons.notifications_outlined)),
                   
                    ],
                  ),
                  const SizedBox(height: 10,),
                 Expanded(
                   child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisSize: MainAxisSize.max,
                     children: [
                       Expanded
                       (child: Container(color: Colors.orange,height: 200,)),
                       SizedBox(width: 10,),
                       Expanded(
                         child: Container(color: Colors.pink,height: 200,)),
                     ],
                   ),
                 ),
                 Expanded(child: Column(
                  children: [
                             Expanded(
                            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded
                                (child: Container(color: Colors.pinkAccent,height: 120,
                                )),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(color: Colors.blue,height: 120,)),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded
                                (child: Container(color: Colors.purple,height: 120,)),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Container(color: Colors.amberAccent,height: 120,)),
                              ],
                            ),
                          ),
                           ],
                          ))
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
      
    );
  }
  }
 


 