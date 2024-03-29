import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:edu_minitoe/consts/colors.dart';
import 'package:edu_minitoe/screens/drawer.dart';
import 'package:edu_minitoe/screens/notifications.dart';
import 'package:edu_minitoe/screens/reportdetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:glassmorphism/glassmorphism.dart';
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

  // int _selectedItemPosition = 2;
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

//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         drawer:   const DrawerPage(),
//       body:SizedBox(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: Stack(
//             children: [
//               Container(
//                     height: MediaQuery.of(context).size.height,
//                     width: MediaQuery.of(context).size.width,
//                     decoration: const BoxDecoration(
//                             // borderRadius: BorderRadius.circular(8),
//                             image: DecorationImage(
//                               image:
//                               AssetImage(
//                                 'assets/bg1.png',
//                               ),
//                               fit: BoxFit.cover,
//                             )),
//                     ),
//               Padding(
//                 padding: const EdgeInsets.all(18.0),
//                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [Flexible(
//                       child: Row(
//                         children: [InkWell(onTap: () {
//                           Navigator.pop(context);
//                         },
//                           child: const Icon(Icons.arrow_back)),
//                           const SizedBox(width: 10,),
//                           Hero(tag: 'tag',
//                           child: Image.asset('assets/cropped-mintie-png.png',height: 60,)),
//                         ],
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                        Builder(
//                           builder: (context) => GestureDetector(
//                               onTap: () {
//                                 Scaffold.of(context).openDrawer();
//                               },
//                               child: const Icon(
//                                 Icons.sort_rounded,
//                                 // size: 30,
//                               )),
//                         ),
//                         Container(width: 5,color: Colors.black,),
//                         const SizedBox(width: 11,),
//                         SizedBox(width: 200,height: 33,
//                           child: TextField(
//                           cursorColor: Colors.grey,
//                           decoration: InputDecoration(
//                             fillColor: Colors.white,
//                             filled: true,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                               borderSide: const BorderSide(color: Colors.black)
//                             ),
//                             // hintText: 'Search',
//                             // hintStyle: TextStyle(
//                             //   color: Colors.grey,
//                             //   fontSize: 18
//                             // ),
//                             // prefixIcon:
//                           ),
//                                             ),
//                         ),
//                       const SizedBox(width: 11,),
//                       IconButton(onPressed: (){
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationPage()));
//                       },
//                         icon: const Badge(child: Icon(Icons.notifications_outlined,
//                       ),)),
                    
//                       ],
//                     ),
//                     // const SizedBox(height: 20,),
//                     // Text('Report',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
//                     // fontSize: 20,fontWeight: FontWeight.bold),),
//                     Flexible(
//                       child: Row(crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           DropdownButton<String>(
//                             underline: Container(
//                                 height: 1.5,width: 500,
//                                 color: Colors.grey,
//                               ),
//                             items: <String>['Abggffgfhhsgffgfg', 'B', 'C', 'D'].map((String value) {
//                               return DropdownMenuItem<String>(
//                                 value: value,
//                                 child: Text(value),
//                               );
//                             }).toList(),
//                             onChanged: (_) {},
//                           ),
//                           DropdownButton<String>(underline: Container(
//                                 height:1.5,width: 500,
//                                 color: Colors.grey,
//                               ),
//                            items: <String>['Agfhfghhghnfghfg', 'B', 'C', 'D'].map((String value) {
//                              return DropdownMenuItem<String>(
//                                value: value,
//                                child: Text(value),
//                              );
//                            }).toList(),
//                            onChanged: (_) {},
//                          )
//                         ],
//                       ),
//                     ),
                    
                        
//                      Flexible(
//                        child: DefaultTabController(
//                               length: 4,
//                               child: Container( 
//                                 child: Column(
//                                   children: <Widget>[
//                                     ButtonsTabBar(
//                                       physics: const NeverScrollableScrollPhysics() ,
//                                       duration: 240,
//                                       elevation: 5,
//                                       radius: 12,
//                                       // contentPadding: const EdgeInsets.all(14) ,
//                                       contentPadding: const EdgeInsets.symmetric(horizontal: 14),
//                                       borderWidth: 0,
//                                       // backgroundColor: Colors.pink,
//                                       // borderColor: Colors.transparent,
//                                       unselectedBackgroundColor: MinitoeColortheme.darkpink,
//                                       //center: true,
//                                       decoration: const BoxDecoration(
//                                         gradient: LinearGradient(
//                                           colors: <Color>[
//                                             Color.fromARGB(255, 75, 24, 158),
//                                             Color.fromARGB(255, 77, 27, 158),
//                                             Color.fromARGB(255, 77, 27, 158),
//                                           ],
//                                         ),
//                                       ),
//                                       unselectedLabelStyle: const TextStyle(color: Colors.white),
//                                       labelStyle: const TextStyle(color: Colors.white,),
//                                       height: 100,
//                                       tabs:   [
//                                          Tab(
//                                           child: Column(crossAxisAlignment: CrossAxisAlignment.center,
//                                           mainAxisAlignment: MainAxisAlignment.center,
//                                             children: [Container(height:30,width: 30 ,decoration:
//                                             const BoxDecoration(image: DecorationImage(image: AssetImage('assets/completion.png'),
//                                             ),),
//                                             ),
//                                               Text('Completion\n  Report',style: GoogleFonts.rubik(color: Colors.white),)
//                                             ],
//                                           ),
//                                          ),
//                                          Tab(
//                                            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
//                                           mainAxisAlignment: MainAxisAlignment.center,
//                                             children: [Container(height:30,width: 30 ,decoration:
//                                             const BoxDecoration(image: DecorationImage(image: AssetImage('assets/marks.png'),
//                                             ),),
//                                             ),
//                                               Text(' Marks\nReport',style: GoogleFonts.rubik(color: Colors.white),)
//                                             ],
//                                           ),
//                                          ),
//                                          Tab(
//                                         child: Column(crossAxisAlignment: CrossAxisAlignment.center,
//                                           mainAxisAlignment: MainAxisAlignment.center,
//                                             children: [Container(height:30,width: 30 ,decoration:
//                                             const BoxDecoration(image: DecorationImage(image: AssetImage('assets/skill.png'),
//                                             ),),
//                                             ),
//                                               Text('  Skill\nReport',style: GoogleFonts.rubik(color: Colors.white),)
//                                             ],
//                                           ),),
//                                          Tab(
//                                          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
//                                           mainAxisAlignment: MainAxisAlignment.center,
//                                             children: [Container(height:30,width: 30 ,decoration:
//                                             const BoxDecoration(image: DecorationImage(image: AssetImage('assets/child.png'),
//                                             ),),
//                                             ),
//                                               Text(' Child\nReport',style: GoogleFonts.rubik(color: Colors.white),)
//                                             ],
//                                           ),),
//                                        ],
//                                     ),
//                                       Expanded(
//                                       child: TabBarView(
//                                         children:  <Widget>[
//                                           Container(
//                                             child:  const Expanded(
//                                             child: TabBar( 
//                                               tabs: <Widget>[
//                                               Tab(text: 'Completed',),
//                                               Tab(text: 'Pending',
//                                               ),
//                                             ],
//                                             labelColor: MinitoeColortheme.fontcolor,
//                                             ),
//                                              ),
//                                           ),
//                                            const Center(
//                                              child: Text('Marks Report'),
//                                            ),
//                                            const Center(
//                                              child: Text('Skill Report'),
//                                            ),
//                                            const Center(
//                                              child: Text('Child Report'),
//                                            ),
//                                          ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                      ),
//                      const SizedBox(height: 10,),


//                  GlassmorphicContainer(
//                   width: MediaQuery.of(context).size.width,
//                     height: 110,
//                     borderRadius: 20,
//                     blur: 5,
//                     alignment: Alignment.bottomCenter,
//                     border: 1,
//                     linearGradient: LinearGradient(
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight,
//                         colors: [
//                           const Color(0xFFffffff).withOpacity(0.1),
//                           const Color(0xFFFFFFFF).withOpacity(0.05),
//                         ],
//                         stops: const[
//                           0.1,
//                           1,
//                         ]),
//                     borderGradient: LinearGradient(
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                       colors: [
//                         const Color(0xFFffffff).withOpacity(0.5),
//                         const Color((0xFFFFFFFF)).withOpacity(0.5),
//                       ],
//                     ),
                    
//                     child: Padding(
//                          padding: const EdgeInsets.all(8.0),
//                          child: InkWell(onTap: () {
//                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReportDetailPage()));
//                          },
//                            child: SizedBox(height: 100,width: MediaQuery.of(context).size.width,
//                             child:   Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Row(  
//                                   children: [
//                                     Flexible(child: Card(
//                                       child: Padding(
//                                       padding: const EdgeInsets.only(top: 8,bottom: 8,left: 25,right: 25),
//                                       child: Text('L3',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
//                                       fontSize: 15),),
//                                     ))),
//                                     Text('-',style: GoogleFonts.rubik( fontSize: 15)),
//                                     Text('Language Introduction',style: GoogleFonts.rubik( fontSize: 15))
//                                   ],
//                                 ),
//                                  Row(  
//                                    children: [
//                                      Flexible(child: Card(child: Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Text('Activity 1',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,fontSize: 15),),
//                                     ))),
//                                     Text('-',style: GoogleFonts.rubik( fontSize: 15)),
//                                     Text('Letters  A to F',style: GoogleFonts.rubik( fontSize: 15))
//                                    ],
//                                  ),
//                               ],
//                             ),
//                            ),
//                          ),
//                        ), ),
               
//                 //       ClipRRect(borderRadius: BorderRadius.circular(12),
//                 //       child: BackdropFilter(filter: ImageFilter.blur(
//                 //         sigmaX: 5,
//                 //         sigmaY: 5,
//                 //       ),
//                 //       blendMode: BlendMode.modulate,
//                 //       child: Container( margin: const EdgeInsets.only(bottom: 6),
//                 //         height: 110,
//                 //         decoration:   BoxDecoration(
//                 //            color: const Color.fromARGB(108, 255, 255, 255),
//                 //            boxShadow: const [BoxShadow(
//                 //         color: Color.fromARGB(255, 255, 250, 250),
//                 //         offset: Offset(0.0, 1.0), //(x,y)
//                 //         blurRadius: 6.0,
//                 //       ),
//                 //       ],
//                 //        borderRadius: BorderRadius.circular(12),
//                 //      ),
//                 //     ))),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
          
    
//           bottomNavigationBar: Container(height: 60,
//           color: const Color.fromARGB(255, 9, 49, 95),
//             child: SnakeNavigationBar.color(
//                   height: 50,
//                   behaviour: snakeBarStyle,
//                   snakeShape: snakeShape,
//                   //  shape: bottomBarShape,
//                   //  padding: padding,
//                     backgroundColor: const Color.fromARGB(255, 9, 49, 95),
//                     snakeViewColor: selectedColor,
//                     selectedItemColor:snakeShape == SnakeShape.indicator ? selectedColor : null,
//                     unselectedItemColor: Colors.white,
//                     showUnselectedLabels: showUnselectedLabels,
//                     showSelectedLabels: showSelectedLabels,
//                     currentIndex: _selectedItemPosition,
//                     onTap: (index) => setState(() => _selectedItemPosition = index),
//                     items:      [
//               BottomNavigationBarItem(activeIcon: Container(height:20,width: 20 ,decoration:
//                   const BoxDecoration(image: DecorationImage(image: AssetImage('assets/timetable.png'),
//                   ),),
//                   ),
//                   icon: Container(height:20,width: 20 ,decoration:
//                   const BoxDecoration(image: DecorationImage(image: AssetImage('assets/timetable.png'),
//                   ),),
//                   ),
//                   label: 'Timetable'),
//               BottomNavigationBarItem(activeIcon:  Container(height:20,width: 20 ,decoration:
//                   const BoxDecoration(image: DecorationImage(image: AssetImage('assets/classes.png'),
//                   ),),
//                   ),
//                   icon:  Container(height:20,width: 20 ,decoration:
//                   const BoxDecoration(image: DecorationImage(image: AssetImage('assets/classes.png'),
//                   ),),
//                   ),
//                   label: 'Classes'),
//               BottomNavigationBarItem(activeIcon: Container(height:20,width: 20 ,decoration:
//                   const BoxDecoration(image: DecorationImage(image: AssetImage('assets/attendence.png'),
//                   ),),
//                   ),
//                 icon:  Container(height:20,width: 20 ,decoration:
//                   const BoxDecoration(image: DecorationImage(image: AssetImage('assets/attendence.png'),
//                   ),),
//                   ),
//               label: 'Attendance'),
//               BottomNavigationBarItem(activeIcon:  Container(height:20,width: 20 ,decoration:
//                   const BoxDecoration(image: DecorationImage(image: AssetImage('assets/report.png'),
//                   ),),
//                   ),
//                   icon:  Container(height:20,width: 20 ,decoration:
//                   const BoxDecoration(image: DecorationImage(image: AssetImage('assets/report.png'),
//                   ),),
//                   ),
//                   label: 'Report'),
//               BottomNavigationBarItem(
//                 activeIcon: Container(height:20,width: 20 ,decoration:
//                   const BoxDecoration(image: DecorationImage(image: AssetImage('assets/assembly.png'),
//                   ),),
//                   ),
//                   icon: Container(height:20,width: 20 ,decoration:
//                   const BoxDecoration(image: DecorationImage(image: AssetImage('assets/assembly.png'),
//                   ),),
//                   ),
//                   label: 'Assembly')
//                   ],
//                   selectedLabelStyle: const TextStyle(fontSize: 24,color: Colors.white),
//                   unselectedLabelStyle: const TextStyle(fontSize: 10,color: Colors.white),
//               ),
//           ),
        
//       ),
//     );
//   }
// }






// import 'package:flutter/material.dart';

// class Newscreen extends StatefulWidget {
//   const Newscreen({super.key});

//   @override
//   State<Newscreen> createState() => NewscreenState();
// }

// class NewscreenState extends State<Newscreen>with TickerProviderStateMixin {
//   late final TabController _tabController;
//   late final  TabController _tabController2;

//   @override
//   void initState() {
//     _tabController = TabController(length: 4, vsync: this);
//     _tabController2 = TabController(length: 3, vsync: this);
//     super.initState();
//   }
    
//   @override
//   Widget build(BuildContext context) {
   
//     return Scaffold(
//       appBar :AppBar(
//         title: const Text('TabBar Widget'),
//         bottom: TabBar(
//           controller: _tabController2,
//           tabs: const <Widget>[
//             Tab(
//               icon: Icon(Icons.cloud_outlined),
//             ),
//             Tab(
//               icon: Icon(Icons.beach_access_sharp),
//             ),
//             Tab(
//               icon: Icon(Icons.brightness_5_sharp),
//             ),
//           ],
//         ),
//       ),
//       body: Container(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             TabBar(
//               unselectedLabelColor: Colors.black,
//               labelColor: Colors.red,
//               tabs: const [
//                 Tab(
//                   icon: Icon(Icons.person),
//                 ),
//                 Tab(
//                   icon: Icon(
//                     Icons.add,
//                   ),
//                 ),
//                 Tab(
//                   icon: Icon(
//                     Icons.deck,
//                   ),
//                 ),
//                 Tab(
//                   icon: Icon(
//                     Icons.child_care,
//                   ),
//                 ),
//               ],
//               controller: _tabController,
//               indicatorSize: TabBarIndicatorSize.tab,
//             ),
//             Expanded(
//               child: TabBarView(
//                 controller: _tabController2,
//                 children: const <Widget>[
//                   Center(
//                     child: Text("It's cloudy here"),
//                   ),
//                   Center(
//                     child: Text("It's rainy here"),
//                   ),
//                   Center(
//                     child: Text("It's sunny here"),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 controller: _tabController,
//                 children: const [
//                   Center(
//                     child: Text(
//                       'Screen 1',
//                     ),
//                ),
//               Center(
//                 child: Text(
//                   'Screen 2',
//                 ),
//               ),
//               Center(
//                 child: Text(
//                   'Screen 3',
//                 ),
//               ),
//               Center(
//                 child: Text(
//                   'Screen 4',
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   ));
//   }
// }





    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Stack(
        children:[Container(
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
          Scaffold(backgroundColor: Colors.transparent,
          drawer:   const DrawerPage(),
          appBar: AppBar(toolbarHeight: 250,
            elevation: 0,automaticallyImplyLeading: false,backgroundColor: Colors.transparent,
            actions: [Padding(
              padding: const EdgeInsets.only(right: 9),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
                children: [Flexible(
                        child: Row(
                          children: [InkWell(onTap: () {
                            Navigator.pop(context);
                          },
                            child: const Icon(Icons.arrow_back,color: Colors.black,)),
                            const SizedBox(width: 10,),
                            Hero(tag: 'tag',
                            child: Image.asset('assets/cropped-mintie-png.png',height: 60,)),
                          ],
                        ),
                      ),
                  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                         Builder(
                            builder: (context) => GestureDetector(
                                onTap: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                child: const Icon(
                                  Icons.sort_rounded,color: Colors.black,
                                  // size: 30,
                                )),
                          ),
                          Container(width: 5,color: Colors.black,),
                          const SizedBox(width: 25,),
                          SizedBox(width: 200,height: 33,
                            child: TextField(
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.black)
                              ),  // prefixIcon:
                            ),
                           ),
                          ),
                        const SizedBox(width: 25,),
                        IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationPage()));
                        },
                          icon: const Badge(child: Icon(Icons.notifications_outlined,color: Colors.black,
                        ),)),
                      
                        ],
                      ),
                      Flexible(
                        child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DropdownButton<String>(
                              underline: Container(
                                  height: 1.5,width: 500,
                                  color: Colors.grey,
                                ),
                              items: <String>['Acghchfhhsgvbc ffgfg', 'Bhgfvjhgf', 'Cdchgfch', 'Dfghd'].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                            SizedBox(width: 10,),
                            DropdownButton<String>(underline: Container(
                                  height:1.5,width: 500,
                                  color: Colors.grey,
                                ),
                             items: <String>['Abggffgfhhcghcsgffgfg', 'Bhgfvjhgf', 'Cdchgfch', 'Dfghd'].map((String value) {
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
                  ButtonsTabBar(
                    physics: const NeverScrollableScrollPhysics() ,
                                              duration: 240,
                                              elevation: 5,
                                              radius: 12,
                                              contentPadding: const EdgeInsets.symmetric(horizontal: 14),
                                              borderWidth: 0,
                                              decoration: const BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: <Color>[
                                                    Color.fromARGB(255, 75, 24, 158),
                                                    Color.fromARGB(255, 77, 27, 158),
                                                    Color.fromARGB(255, 77, 27, 158),
                                                  ],
                                                ),
                                              ),
                                              unselectedLabelStyle: const TextStyle(color: Colors.white),
                                              unselectedBackgroundColor: MinitoeColortheme.darkpink,
                                              labelStyle: const TextStyle(color: Colors.white,),
                                              height: 100,
                    tabs: <Widget>[
                      Tab(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                             mainAxisAlignment: MainAxisAlignment.center,
                               children: [Container(height:30,width: 30 ,decoration:
                               const BoxDecoration(image: DecorationImage(image: AssetImage('assets/completion.png'),
                               ),),
                               ),
                                 Text('Completion\n   Report',style: GoogleFonts.rubik(color: Colors.white),)
                               ],
                             ),
                      ),
                      Tab(
                       child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                                children: [Container(height:30,width: 30 ,decoration:
                                const BoxDecoration(image: DecorationImage(image:AssetImage('assets/marks.png'),
                                ),),
                                ),
                                  Text('  Marks\n Report',style: GoogleFonts.rubik(color: Colors.white),)
                                ],
                              ),
                      ),
                      Tab(
                       child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Container(height:30,width: 30 ,decoration:
                                  const BoxDecoration(image: DecorationImage(image: AssetImage('assets/skill.png'),
                                  ),),
                                  ),
                                    Text('  Skill\n Report',style: GoogleFonts.rubik(color: Colors.white),)
                                  ],
                                ),
                      ),
                      Tab(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Container(height:30,width: 30 ,decoration:
                                  const BoxDecoration(image: DecorationImage(image: AssetImage('assets/child.png'),
                                  ),),
                                  ),
                                    Text('  Child\n Report',style: GoogleFonts.rubik(color: Colors.white),)
                                  ],
                                ),
                      ),
                    ],
                  ),
                ],
              ),
            ),]  
          ),
          body: const TabBarView(
            children: <Widget>[
              NestedTabBar('Completion'),
              NestedTabBar('Marks'),
              NestedTabBar('Skill'),
              NestedTabBar('Child'),
            ],
          ),
        ),] 
      ),
    );
  }
}

class NestedTabBar extends StatefulWidget {
  const NestedTabBar(this.outerTab, {super.key});

  final String outerTab;

  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar.secondary(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: 'Completed'),
            Tab(text: 'Pending'),
          ],
          labelStyle:const TextStyle(color: Colors.black),
          labelColor: Colors.black,
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Container(color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GlassmorphicContainer(
                      width: MediaQuery.of(context).size.width/1.02,
                        height: MediaQuery.of(context).size.height/6,
                        borderRadius: 20,
                        blur: 5,
                        alignment: Alignment.topCenter,
                        border: 1,
                        linearGradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              const Color(0xFFffffff).withOpacity(0.1),
                              const Color(0xFFFFFFFF).withOpacity(0.05),
                            ],
                            stops: const[
                              0.1,
                              1,
                            ]),
                        borderGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color(0xFFffffff).withOpacity(0.5),
                            const Color((0xFFFFFFFF)).withOpacity(0.5),
                          ],
                        ),
                        
                        child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: InkWell(onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>const ReportDetailPage()));
                             },
                               child: SizedBox(height: 100,width: MediaQuery.of(context).size.width,
                                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Flexible(child: Card(
                                          child: Padding(
                                          padding: const EdgeInsets.only(top: 8,bottom: 8,left: 25,right: 25),
                                          child: Text('${widget.outerTab}:L3',style: GoogleFonts.rubik(color: Colors.pink,
                                          fontSize: 15),),
                                        ))),
                                        Text('-',style: GoogleFonts.rubik( fontSize: 15)),
                                        Text('Language Introduction',style: GoogleFonts.rubik( fontSize: 15))
                                      ],
                                    ),
                                     Row(  
                                       children: [
                                         Flexible(child: Card(child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Activity 1',style: GoogleFonts.rubik(color: Colors.pink,fontSize: 15),),
                                        ))),
                                        Text('-',style: GoogleFonts.rubik( fontSize: 15)),
                                        Text('Letters  A to F',style: GoogleFonts.rubik( fontSize: 15))
                                       ],
                                     ),
                                  ],
                                ),
                               ),
                             ),
                           ), ),
                )
              ),
              Card( color:   Color.fromARGB(0, 179, 179, 179),
                margin: const EdgeInsets.all(16.0),
                child: Center(
                    child: Text('${widget.outerTab}: Pending tab',)),
              ),
            ],
          ),
        ),
      ],
    );
  }
  
}