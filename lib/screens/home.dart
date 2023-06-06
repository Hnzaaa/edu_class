 
import 'package:edu_minitoe/consts/colors.dart';
import 'package:edu_minitoe/screens/attendance.dart';
import 'package:edu_minitoe/screens/drawer.dart';
import 'package:edu_minitoe/screens/login.dart';
import 'package:edu_minitoe/screens/notifications.dart';
import 'package:edu_minitoe/screens/report.dart';
import 'package:edu_minitoe/screens/timetable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  //  final GlobalKey<NavigatorState> navigatorkey;
  // final String tabItem;
  // const HomePage({Key? key,required this.navigatorkey,required this.tabItem}):super(key:key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  int _selectedIndex = 2;
  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = true;
  bool showUnselectedLabels = true;

  Color selectedColor = MinitoeColortheme.darkpink;

    // SnakeNavigationBar({Key? key,required this.navigatorkey,required this.tabItem}):super(key:key);
  // Gradient selectedGradient =
  //     const LinearGradient(colors: [Colors.red, Colors.amber]);
  // Gradient unselectedGradient =
  //     const LinearGradient(colors: [Colors.red, Color.fromARGB(255, 255, 255, 255)]);

  
  @override
  void initState(){
    super.initState();
  
  }

    int _selectedTabIndex = 0;
  final List<Widget> _children = [
      const TimetablePage(),
      const ReportPage(),
      const AttendencePage(),
      const NotificationPage()
  ];

  @override
  Widget build(BuildContext context) {
    // Widget child;

    //  if(tabItem == "")
    //  child = HomePage(navigatorkey: navigatorkey, tabItem: tabItem);
    //  else if(tabItem =="")
    //  child=ReportPage(key: ,);
    
    return Scaffold(
      drawer:   const DrawerPage(),
    body:
    // _children[_selectedTabIndex],
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
                      icon: const Badge(child: Icon(Icons.notifications_outlined,
                      ),)),
                  
                    ],
                  ),
                  const SizedBox(height: 20,),
                Expanded(
                  child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start ,
                    children: [
                     // Generated code for this CircleImage Widget...
                     Flexible(
                       child: Column(mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Flexible(
                             child:   Padding(
                               padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                               child: Container(
                                 width: MediaQuery.of(context).size.height/2,
                                 height: MediaQuery.of(context).size.width/2,
                                 clipBehavior: Clip.antiAlias,
                                 decoration: const BoxDecoration(
                             color: Colors.white,
                                   shape: BoxShape.circle,
                                 ),
                                 child: CircularPercentIndicator(
                                  startAngle: 300,
                                  animation: true,
                                  animationDuration: 800,
                                   radius: 60.0,
                                   backgroundColor: Colors.transparent,
                                   lineWidth: 30.0,
                                   percent: .45,
                                   center:   Text("45%",style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                                   fontWeight: FontWeight.normal,fontSize: 20),),
                                   progressColor: Colors.orange,
                                 )
                               ),
                             ),
                           ),
                           Text('Portions',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,fontSize: 20,
                           fontWeight: FontWeight.normal),)
                         ],
                       ),
                     ),
                     

                      // Expanded(
                      // child: Container(height: 160,
                      // decoration: BoxDecoration(color: Colors.white,
                      // borderRadius: BorderRadius.circular(100)),
                      // // child:  const Center(child: Card(color: Colors.white,shape: CircleBorder( side: BorderSide.none ) ,
                      // //   child: Card(color:Colors.orange,elevation: 10,
                      // //   shape: CircleBorder( side: BorderSide.none ) ,
                      // //   child: Padding(
                      // //     padding: EdgeInsets.all(6.0),
                      // //     child: Text('A',style:
                      // //     TextStyle(color: Colors.white,fontSize: 20),),
                      // //   )),)),
                      // )),


                      const SizedBox(width: 10,),
                      Flexible(
                        child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                             child: Padding(
                               padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                               child: Container(
                                 width: MediaQuery.of(context).size.height/2,
                                 height: MediaQuery.of(context).size.width/2,
                                 clipBehavior: Clip.antiAlias,
                                 decoration: const BoxDecoration(
                                   color: Colors.white,
                                   shape: BoxShape.circle,
                                 ),
                                 child:   CircularPercentIndicator(
                                  animation: true,
                                  animationDuration: 800,
                                  startAngle: 150,
                                   radius: 60.0,
                                   lineWidth: 30.0,
                                   backgroundColor: Colors.white,
                                   percent: .78,
                                   center:   Text("78%",style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                                   fontWeight: FontWeight.normal,fontSize: 20),),
                                   progressColor: Colors.pink,
                                 )
                               ),
                             ),
                               ),
                               Text('Attendance',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,fontSize: 20,
                           fontWeight: FontWeight.normal))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                            Expanded(
                            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: InkWell(onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const TimetablePage()));
                                  },
                                  child: Container(height: MediaQuery.of(context).size.height/4,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,borderRadius: BorderRadius.circular(19)),
                                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      Image.asset('assets/timetable.png',),
                                      const SizedBox(height: 10,),
                                      const Text('Timetable',style: TextStyle(color: Colors.white),)
                                    ],)
                                  ),
                                )),
                                const SizedBox(width: 30,),
                                Expanded(
                                  child: InkWell(onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReportPage()));
                                  },
                                    child: Container(height: MediaQuery.of(context).size.height/4,
                                    decoration: BoxDecoration(color: Colors.blue,
                                    borderRadius: BorderRadius.circular(19)),
                                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/report.png',),
                                      const SizedBox(height: 10,),
                                      const Text('Report',style: TextStyle(color: Colors.white),)
                                      ],
                                    ),),
                                  )),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Expanded(
                            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: InkWell(onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const AttendencePage()));
                                    },
                                    child: Container(height: MediaQuery.of(context).size.height/4,
                                    decoration: BoxDecoration(color: Colors.purple,
                                      borderRadius: BorderRadius.circular(19)),
                                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/attendence.png',),
                                      const SizedBox(height: 10,),
                                      const Text('Attendance',style: TextStyle(color: Colors.white),)
                                    ],
                                ),),
                                  )),
                                const SizedBox(width: 30,),
                                Expanded(
                                  child: InkWell(onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const OtpPage()));
                                  },
                                    child: Container(height: MediaQuery.of(context).size.height/4,
                                    decoration: BoxDecoration(color: Colors.orange ,
                                    borderRadius: BorderRadius.circular(19)),
                                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/timetable.png',),
                                      const SizedBox(height: 10,),
                                      const Text('Assessment',style: TextStyle(color: Colors.white),)
                                      ],
                                    ),),
                                  )),
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
        color: MinitoeColortheme.navbar,
          child: SnakeNavigationBar.color(
                height: 50,
                behaviour: snakeBarStyle,
                snakeShape: snakeShape,
                //  shape: bottomBarShape,
                //  padding: padding,
                  backgroundColor: MinitoeColortheme.navbar,
                  snakeViewColor: selectedColor,
                  selectedItemColor:snakeShape == SnakeShape.indicator ? selectedColor : null,
                  unselectedItemColor: Colors.white,
                  showUnselectedLabels: showUnselectedLabels,
                  showSelectedLabels: showSelectedLabels,
                  currentIndex: _selectedTabIndex,
                  onTap: onTabTapped,
                  items:  [
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
  void onTabTapped(int index) {
   setState(() {
     _selectedTabIndex = index;
   });
 }
}

class BottmNavigation extends StatefulWidget {
  const BottmNavigation({super.key});

  @override
  State<BottmNavigation> createState() => _BottmNavigationState();
}

class _BottmNavigationState extends State<BottmNavigation> {

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

  SnakeShape snakeShape = SnakeShape.circle;

  bool showSelectedLabels = true;
  bool showUnselectedLabels = true;

  Color selectedColor = MinitoeColortheme.darkpink;
  @override
  void initState(){
    super.initState();
  
  }
   int _selectedTabIndex = 0;
  final List<Widget> _children = [
      const HomePage(),
      const TimetablePage(),
      const ReportPage(),
      const AttendencePage(),
      const NotificationPage()
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    bottomNavigationBar: Container(height: 60,
        color: MinitoeColortheme.navbar,
          child: SnakeNavigationBar.color(
                height: 50,
                behaviour: snakeBarStyle,
                snakeShape: snakeShape,
                //  shape: bottomBarShape,
                //  padding: padding,
                  backgroundColor: MinitoeColortheme.navbar,
                  snakeViewColor: selectedColor,
                  selectedItemColor:snakeShape == SnakeShape.indicator ? selectedColor : null,
                  unselectedItemColor: Colors.white,
                  showUnselectedLabels: showUnselectedLabels,
                  showSelectedLabels: showSelectedLabels,
                  currentIndex: _selectedTabIndex,
                  onTap: onTabTapped,
                  items:  [
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
void onTabTapped(int index) {
   setState(() {
     _selectedTabIndex = index;
   });
 }
}