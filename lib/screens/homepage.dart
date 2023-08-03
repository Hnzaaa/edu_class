import 'package:edu_minitoe/consts/colors.dart';
import 'package:edu_minitoe/screens/drawer.dart';
import 'package:edu_minitoe/screens/notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool showSelectedLabels = true;
  bool showUnselectedLabels = true;

  @override
  void initState(){
    super.initState();
  
  }
  
  DateTime? dateCallback;

_dateCallback(DateTime date) {
    dateCallback = date;
    print(dateCallback);
  }
  @override
  Widget build(BuildContext context) {
  
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) { 
        return Scaffold(
        drawer:   const DrawerPage(),
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
    
              SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top:50.0.sp,left: 20.sp,right: 20.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Row(
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
                              const SizedBox(width: 11,),
                               Hero(tag: 'tag', child: 
                               Image.asset('assets/cropped-mintie-png.png',height: 60.sp,)),
                           ],
                         ),
                         SizedBox(width: 11.w,),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const CircleAvatar(backgroundImage: AssetImage('assets/girlicon.png'),backgroundColor: Colors.transparent,
                            radius: 15,),
                            IconButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationPage()));
                            },
                              icon: const Badge(backgroundColor: Colors.green,
                              child: Icon(Icons.notifications_outlined,
                           ),)),
                          ],
                        ),
                      
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding:  EdgeInsets.only(left:20.0.sp),
                      child: Text('Hi Michael',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,fontSize: 20.sp),),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left:20.0.sp),
                      child: Text('You have 4 Classes Today',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                       fontSize:25.sp,fontWeight: FontWeight.w500),),
                    ),
                     const SizedBox(height: 30,),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          G2xSimpleWeekCalendar(
                             100.0,
                             DateTime.now(),
                             dateCallback: (date) => _dateCallback(date),
                             typeCollapse: true,
                             //backgroundDecoration: BoxDecoration(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                     Padding(
                       padding:  EdgeInsets.all(10.0.sp),
                       child: GlassmorphicContainer(
                        width: MediaQuery.of(context).size.width,
                          height: 100.h,
                          borderRadius: 20,
                          blur: 5,
                          alignment: Alignment.bottomCenter,
                          border: 2,
                          linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFFffffff).withOpacity(0.1),
                                const Color(0xFFFFFFFF).withOpacity(0.05),
                              ],
                              stops: const [
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
                             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Flexible(
                                    child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                  Card(
                                    color: MinitoeColortheme.darkpink,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft:Radius.circular(10)),
                                    ),
                                    child: Wrap(
                                      children: [
                                        Container(height:  MediaQuery.of(context).size.width/5,
                                              width: MediaQuery.of(context).size.width/4,
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  topLeft: Radius.circular(10))),
                                          margin: const EdgeInsets.only(right: 8),
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                                          child: Text('09:30-10:00',style: GoogleFonts.rubik(color: MinitoeColortheme.darkpink),),
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
                                      Text('Pre Writing',style: GoogleFonts.rubik(fontSize: 20,fontWeight: FontWeight.bold,
                                       color: MinitoeColortheme.fontcolor),),
                                      Text('Class',style: GoogleFonts.rubik(fontSize: 15,color: MinitoeColortheme.fontcolor),),
                                      Text('Section',style: GoogleFonts.rubik(fontSize: 15,color: MinitoeColortheme.fontcolor),),
                                      Text('Room',style: GoogleFonts.rubik(fontSize: 15,color: MinitoeColortheme.fontcolor),),
                                    ],
                                  ),
                                ),
                              ),
                               SizedBox(width: 70.w,),
                               Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 45.sp,)
                             ],),
                            ),
                          ]),
                         ),),
                     ),
                     Padding(
                       padding:  EdgeInsets.all(10.0.sp),
                       child: GlassmorphicContainer(
                        width: MediaQuery.of(context).size.width,
                          height: 100.h,
                          borderRadius: 20,
                          blur: 5,
                          alignment: Alignment.bottomCenter,
                          border: 2,
                          linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFFffffff).withOpacity(0.1),
                                const Color(0xFFFFFFFF).withOpacity(0.05),
                              ],
                              stops: const [
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
                             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Flexible(
                                    child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                  Card(
                                    color: MinitoeColortheme.darkpink,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft:Radius.circular(10)),
                                    ),
                                    child: Wrap(
                                      children: [
                                        Container(height:  MediaQuery.of(context).size.width/5,
                                              width: MediaQuery.of(context).size.width/4,
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(10),
                                                  topLeft: Radius.circular(10))),
                                          margin: const EdgeInsets.only(right: 8),
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                                          child: Text('10:00-10:30',style: GoogleFonts.rubik(color: MinitoeColortheme.darkpink),),
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
                                      Text('English',style: GoogleFonts.rubik(fontSize: 20,fontWeight: FontWeight.bold,
                                       color: MinitoeColortheme.fontcolor),),
                                      Text('Class',style: GoogleFonts.rubik(fontSize: 15,color: MinitoeColortheme.fontcolor),),
                                      Text('Section',style: GoogleFonts.rubik(fontSize: 15,color: MinitoeColortheme.fontcolor),),
                                      Text('Room',style: GoogleFonts.rubik(fontSize: 15,color: MinitoeColortheme.fontcolor),),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 70.w,),
                              Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 45.sp,)
                             ],),
                            ),
                          ]),
                         ),),
                     ),
                    Card(
                            color: MinitoeColortheme.darkpink,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Wrap(
                              children: [
                                Container(height:  MediaQuery.of(context).size.width/9,
                                      width: MediaQuery.of(context).size.width/4,
                                  decoration: const BoxDecoration(
                                      color: MinitoeColortheme.darkpink,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(20),
                                          topRight: Radius.circular(20))),
                                  margin: const EdgeInsets.only(right: 1),
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                                  child: Text('My Tasks',style: GoogleFonts.rubik(color: Colors.white,fontSize: 15),),
                                )
                              ],
                            ),
                           ),
                      Padding(
                       padding:  EdgeInsets.all(10.0.sp),
                       child: GlassmorphicContainer(
                        width: 150.w,
                          height: 100.h,
                          borderRadius: 20,
                          blur: 5,
                          alignment: Alignment.bottomCenter,
                          border: 3,
                          linearGradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFFffffff).withOpacity(0.1),
                                const Color(0xFFFFFFFF).withOpacity(0.05),
                              ],
                              stops: const [
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
                          
                          child:  Padding(
                            padding: EdgeInsets.all(20.0.sp),
                            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                              Text('Arrange Class Room',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                               fontSize: 15.sp,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
                              Card(child: Padding(
                                padding:  EdgeInsets.all(3.sp),
                                child: Text('12:00 AM',style: GoogleFonts.rubik(color: MinitoeColortheme.darkpink),),
                              )),
                              Text('Neelam',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor),)
                            ],),
                          ),),
                     ),
                     SizedBox(height: 20.h,)
                  ],
                ),
              )
            ],
          ),
        ),
      );
       },
    
    );
  }
}


class MyDateTime {
  static String formatDate(DateTime date, {String format = "dd/MM/yyyy"}) {
    var str = format.replaceAll(
        "dd", (date.day < 10 ? "0" : "") + date.day.toString());
    str = str.replaceAll(
        "MM", (date.month < 10 ? "0" : "") + date.month.toString());
    str = str.replaceAll("yyyy", date.year.toString());
    return str;
  }

  ///get first date of week
  static DateTime getFirstDateOfWeek(DateTime date) {
    return date.weekday == 7 ? date : date.add(Duration(days: -date.weekday));
  }

  ///get all days of week
  static List<int> getDaysOfWeek(DateTime date) {
    var firstDay = getFirstDateOfWeek(date);
    var days = <int>[];
    for (var i = 0; i < 7; i++) {
      days.add(firstDay.add(Duration(days: i)).day);
    }
    return days;
  }
}

typedef void DateCallback(DateTime val);

class G2xSimpleWeekCalendar extends StatefulWidget {
  G2xSimpleWeekCalendar(
    this.bodyHeight,
    this.currentDate, {
    this.strWeekDays = const [
      "Mon",
      "Tues",
      "Wed",
      "Thurs",
      "Fri",
    ],
    this.format = "yyyy/MM/dd",
    required this.dateCallback,
    this.defaultTextStyle = const TextStyle(),
    this.selectedTextStyle = const TextStyle(color: Colors.red),
    this.selectedBackgroundDecoration = const BoxDecoration(),
    this.backgroundDecoration = const BoxDecoration(),
    this.typeCollapse = false,
  });
  final DateTime currentDate;
  final List<String> strWeekDays;
  final String format;
  final DateCallback dateCallback;
  //style
  final TextStyle defaultTextStyle;
  final TextStyle selectedTextStyle;
  final BoxDecoration selectedBackgroundDecoration;
  final BoxDecoration backgroundDecoration;
  final bool typeCollapse;
  final double bodyHeight;
  @override
  _G2xSimpleWeekCalendarState createState() => _G2xSimpleWeekCalendarState();
}

class _G2xSimpleWeekCalendarState extends State<G2xSimpleWeekCalendar>
    with TickerProviderStateMixin {
  DateTime? currentDate;
  var weekDays = <int>[];
  var selectedIndex = 0;
  var _close = false;

  //Collapse
  AnimationController? _collapseController;
  Animation<double>? _collpseAnimation;
  var _heightCollapse = 0.0;

  _setSelectedDate(int index) {
    setState(() {
      selectedIndex = index;
      currentDate =
          MyDateTime.getFirstDateOfWeek(currentDate!).add(Duration(days: index));
      if (widget.dateCallback != null) widget.dateCallback(currentDate!);
    });
  }

  _altertWeek(int days) {
    setState(() {
      currentDate = currentDate!.add(Duration(days: days));
      if (widget.dateCallback != null) widget.dateCallback(currentDate!);
    });
  }

  _collapse() {
    if (!widget.typeCollapse) return;
    if (_collapseController!.status == AnimationStatus.completed && _close) {
      _collapseController!.reverse();
      _close = false;
    } else if (_collapseController!.status == AnimationStatus.dismissed) {
      _collapseController!.forward();
      _close = true;
    }
  }

  @override
  void initState() {
    super.initState();
    currentDate = widget.currentDate;
    // if(widget.dateCallback != null)
    //   widget.dateCallback(currentDate);
    selectedIndex = currentDate!.weekday == 7 ? 0 : currentDate!.weekday;

    //Collapse
    _heightCollapse = widget.bodyHeight;
    _collapseController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _collpseAnimation = Tween<double>(begin: widget.bodyHeight, end: 0)
        .animate(_collapseController!);
    _collapseController!.addListener(() {
      setState(() {
        _heightCollapse = _collpseAnimation!.value;
      });
      if (_collapseController!.status == AnimationStatus.completed && !_close) {
        _collapseController!.reset();
        _close = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    weekDays = MyDateTime.getDaysOfWeek(currentDate!);
    // var size = MediaQuery.of(context).size;
    // var sizePart = size.width / 4 - 10;
    var rowWeeks = Column(
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                            color: MinitoeColortheme.darkpink,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Wrap(
                              children: [
                                Container(height:  MediaQuery.of(context).size.width/9,
                                      width: MediaQuery.of(context).size.width/4,
                                  decoration: const BoxDecoration(
                                      color: MinitoeColortheme.darkpink,
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(20),
                                          topRight: Radius.circular(20))),
                                  margin: const EdgeInsets.only(right: 1),
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                                  child: Text('My Classes',style: GoogleFonts.rubik(color: Colors.white,fontSize: 15),),
                                )
                              ],
                            ),
                           ),
                           Row(
                             children: [
                              InkWell( onTap: () => _altertWeek(-7),
                                child: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,size: 40.sp,)),
                               InkWell( onTap: () => _altertWeek(7),
                                child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 40.sp,)),
                               SizedBox(width: 10.w,)
                             ],
                           )
                      ],
                    ),
        // Container(
        //     decoration: widget.backgroundDecoration,
        //     padding: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
        //     child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         children: <Widget>[
        //           Container(
        //               width: sizePart * 2,
        //               child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: <Widget>[
        //                   Text(
        //                       MyDateTime.formatDate(currentDate!,
        //                           format: widget.format),
        //                       style: GoogleFonts.rubik(color:MinitoeColortheme.fontcolor)),
        //                 ],
        //               )),
        //         ])),
        Container(
            //height: _heightCollapse,
            decoration: widget.backgroundDecoration,
            padding: EdgeInsets.only(bottom: 5, left: 5, right: 5),
            child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: widget.strWeekDays.map((i) {
                 return InkWell(
                     onTap: () =>
                         _setSelectedDate(widget.strWeekDays.indexOf(i)),
                     child: Container(
                       padding: EdgeInsets.all(5),
                       decoration:
                           selectedIndex == widget.strWeekDays.indexOf(i)
                               ? widget.selectedBackgroundDecoration
                               : BoxDecoration(),
                       child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                       color: selectedIndex == widget.strWeekDays.indexOf(i)?MinitoeColortheme.darkpink:Colors.white ,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(height: 40.h,width: 30.w,
                             child: Column(mainAxisAlignment: MainAxisAlignment.center,
                               children: <Widget>[
                                 selectedIndex == widget.strWeekDays.indexOf(i)
                                     ? Text(
                                         weekDays[widget.strWeekDays
                                                 .indexOf(i)]
                                             .toString(),
                                         style: selectedIndex ==
                                                 widget.strWeekDays
                                                     .indexOf(i)
                                             ?GoogleFonts.rubik(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w500)
                                             : GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,fontSize: 20.sp,fontWeight: FontWeight.w500))
                                     : Text(
                                         weekDays[
                                                 widget.strWeekDays.indexOf(i)]
                                             .toString(),
                                         style: selectedIndex ==
                                                 widget.strWeekDays.indexOf(i)
                                             ? GoogleFonts.rubik(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w500)
                                             : GoogleFonts.rubik(color:MinitoeColortheme.fontcolor,fontSize: 20.sp,fontWeight: FontWeight.w500)),
                                              SizedBox(
                                   height: 2,
                                 ),
                                 
                                 Text(i,
                                     style: selectedIndex ==
                                             widget.strWeekDays.indexOf(i)
                                         ?GoogleFonts.rubik(color: Colors.white)
                                         :GoogleFonts.rubik(color:MinitoeColortheme.fontcolor)),
                                
                               ],
                             ),
                           ),
                         ),
                       ),
                     ));
               }).toList()))
      ],
    );
    return rowWeeks;
  }
}