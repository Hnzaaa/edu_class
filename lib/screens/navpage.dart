 
import 'package:edu_minitoe/consts/colors.dart';
import 'package:edu_minitoe/screens/attendance.dart';
import 'package:edu_minitoe/screens/homepage.dart';
import 'package:edu_minitoe/screens/drawer.dart';
import 'package:edu_minitoe/screens/notifications.dart';
import 'package:edu_minitoe/screens/report.dart';
import 'package:edu_minitoe/screens/timetable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  //  final GlobalKey<NavigatorState> navigatorkey;
  // final String tabItem;
  // const HomePage({Key? key,required this.navigatorkey,required this.tabItem}):super(key:key);

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {


  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
  EdgeInsets padding = const EdgeInsets.all(12);

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

   int selectedTabIndex = 0;
  bool selectfragment = false;
  final List<Widget> pages = [
      const HomePage(),
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
    body:selectfragment == true
              ? const HomePage()
              : pages[selectedTabIndex],
    // _children[_selectedTabIndex],
    
        

        bottomNavigationBar: Container(height: 70,
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
                  currentIndex: selectedTabIndex,
                  onTap: onTabTapped,
                  items:  [
            BottomNavigationBarItem(activeIcon: Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/timetable.png'),
                ),),
                ),
                icon: Container(height:20,width: 20,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/timetable.png'),
                ),),
                ),
                label: 'Home'),
            BottomNavigationBarItem(activeIcon:  Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/classes.png'),
                ),),
                ),
                icon:  Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/classes.png'),
                ),),
                ),
                label: 'Calender'),
            BottomNavigationBarItem(activeIcon: Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/attendence.png'),
                ),),
                ),
              icon:  Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/attendence.png'),
                ),),
                ),
            label: 'Punch in'),
            BottomNavigationBarItem(activeIcon:  Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/report.png'),
                ),),
                ),
                icon:  Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/report.png'),
                ),),
                ),
                label: 'Tasks'),
            BottomNavigationBarItem(
              activeIcon: Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/assembly.png'),
                ),),
                ),
                icon: Container(height:20,width: 20 ,decoration:
                const BoxDecoration(image: DecorationImage(image: AssetImage('assets/assembly.png'),
                ),),
                ),
                label: 'Reports')
                ],
                selectedLabelStyle: const TextStyle(fontSize: 24,color: Colors.white),
                unselectedLabelStyle: const TextStyle(fontSize: 10,color: Colors.white),
            ),
        ),
      
    );
    
  }
  void onTabTapped(int index) {
   setState(() {
     selectedTabIndex = index;
   });
 }
}

// class BottmNavigation extends StatefulWidget {
//   const BottmNavigation({super.key});

//   @override
//   State<BottmNavigation> createState() => _BottmNavigationState();
// }

// class _BottmNavigationState extends State<BottmNavigation> {

//   ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
//     borderRadius: BorderRadius.all(Radius.circular(25)),
//   );
//   SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;
//   EdgeInsets padding = const EdgeInsets.all(12);

//   SnakeShape snakeShape = SnakeShape.circle;

//   bool showSelectedLabels = true;
//   bool showUnselectedLabels = true;

//   Color selectedColor = MinitoeColortheme.darkpink;
//   @override
//   void initState(){
//     super.initState();
  
//   }
//    int _selectedTabIndex = 0;
//   final List<Widget> pages = [
//       const HomePage(),
//       const TimetablePage(),
//       const ReportPage(),
//       const AttendencePage(),
//       const NotificationPage()
//   ];
//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//     bottomNavigationBar: Container(height: 60,
//         color: MinitoeColortheme.navbar,
//           child: SnakeNavigationBar.color(
//                 height: 50,
//                 behaviour: snakeBarStyle,
//                 snakeShape: snakeShape,
//                 //  shape: bottomBarShape,
//                 //  padding: padding,
//                   backgroundColor: MinitoeColortheme.navbar,
//                   snakeViewColor: selectedColor,
//                   selectedItemColor:snakeShape == SnakeShape.indicator ? selectedColor : null,
//                   unselectedItemColor: Colors.white,
//                   showUnselectedLabels: showUnselectedLabels,
//                   showSelectedLabels: showSelectedLabels,
//                   currentIndex: _selectedTabIndex,
//                   onTap: onTabTapped,
//                   items:  [
//             BottomNavigationBarItem(activeIcon: Container(height:20,width: 20 ,decoration:
//                 const BoxDecoration(image: DecorationImage(image: AssetImage('assets/timetable.png'),
//                 ),),
//                 ),
//                 icon: Container(height:20,width: 20 ,decoration:
//                 const BoxDecoration(image: DecorationImage(image: AssetImage('assets/timetable.png'),
//                 ),),
//                 ),
//                 label: 'Timetable'),
//             BottomNavigationBarItem(activeIcon:  Container(height:20,width: 20 ,decoration:
//                 const BoxDecoration(image: DecorationImage(image: AssetImage('assets/classes.png'),
//                 ),),
//                 ),
//                 icon:  Container(height:20,width: 20 ,decoration:
//                 const BoxDecoration(image: DecorationImage(image: AssetImage('assets/classes.png'),
//                 ),),
//                 ),
//                 label: 'Classes'),
//             BottomNavigationBarItem(activeIcon: Container(height:20,width: 20 ,decoration:
//                 const BoxDecoration(image: DecorationImage(image: AssetImage('assets/attendence.png'),
//                 ),),
//                 ),
//               icon:  Container(height:20,width: 20 ,decoration:
//                 const BoxDecoration(image: DecorationImage(image: AssetImage('assets/attendence.png'),
//                 ),),
//                 ),
//             label: 'Attendance'),
//             BottomNavigationBarItem(activeIcon:  Container(height:20,width: 20 ,decoration:
//                 const BoxDecoration(image: DecorationImage(image: AssetImage('assets/report.png'),
//                 ),),
//                 ),
//                 icon:  Container(height:20,width: 20 ,decoration:
//                 const BoxDecoration(image: DecorationImage(image: AssetImage('assets/report.png'),
//                 ),),
//                 ),
//                 label: 'Report'),
//             BottomNavigationBarItem(
//               activeIcon: Container(height:20,width: 20 ,decoration:
//                 const BoxDecoration(image: DecorationImage(image: AssetImage('assets/assembly.png'),
//                 ),),
//                 ),
//                 icon: Container(height:20,width: 20 ,decoration:
//                 const BoxDecoration(image: DecorationImage(image: AssetImage('assets/assembly.png'),
//                 ),),
//                 ),
//                 label: 'Assembly')
//                 ],
//                 selectedLabelStyle: const TextStyle(fontSize: 24,color: Colors.white),
//                 unselectedLabelStyle: const TextStyle(fontSize: 10,color: Colors.white),
//             ),
//         ),
//     );
// }
// void onTabTapped(int index) {
//    setState(() {
//      _selectedTabIndex = index;
//    });
//  }
// }