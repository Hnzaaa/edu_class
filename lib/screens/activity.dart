import 'package:edu_minitoe/consts/colors.dart';
import 'package:edu_minitoe/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'notifications.dart';
class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});


  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {

  
  @override
  void initState(){
    super.initState();
  
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
    
              Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top:20.0.sp,left: 20.sp,right: 20.sp),
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
                  Align(alignment: Alignment.center,
                    child: Text('Activity 1',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                    fontSize: 20.sp,fontWeight: FontWeight.w600),)),
                  Padding(
                    padding:  EdgeInsets.only(top: 30.0.r,left: 30.r,right: 30.r,bottom: 0.r),
                    child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                    height: MediaQuery.of(context).size.height/1.23,
                    width: MediaQuery.of(context).size.width,
                    child: Scrollbar(thickness: 8,radius: Radius.elliptical(4, 4),
                      trackVisibility: true,thumbVisibility: true,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView(
                          children: [
                            Text('Description',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                                          fontSize: 20.sp,fontWeight: FontWeight.w500),),
                            Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),
                            Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),
                            Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),
                            Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),
                            Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),
                            Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),
                             Text('Objective',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                                          fontSize: 20.sp,fontWeight: FontWeight.w500),),
                            Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),
                            Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),
                            Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),
                            Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),
                            Text('Activity',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                                          fontSize: 20.sp,fontWeight: FontWeight.w500),),
                            Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),
                            Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),
                            Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),
                            Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),
                            Text('Tools',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                                          fontSize: 20.sp,fontWeight: FontWeight.w500),),
                            Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),
                            Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),Text('Descrbfdjkkg jfdkbdskjfd fdnjhbfdjkbd jhbfdkbdsf djhfbdjkdbfgd jiption',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                            fontSize: 15.sp,),),
                            Text('Images',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                                          fontSize: 20.sp,fontWeight: FontWeight.w500),),
                            Text('Links',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                                          fontSize: 20.sp,fontWeight: FontWeight.w500),),
                            Text('Home Work',style: GoogleFonts.rubik(color: MinitoeColortheme.fontcolor,
                                          fontSize: 20.sp,fontWeight: FontWeight.w500),),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 15),
                              child: Container(height: 100.h,width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.black)),),
                            ),
                            Padding(
                               padding:  EdgeInsets.symmetric(horizontal:10.r),
                               child: Align(alignment: Alignment.centerRight,
                                 child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: MinitoeColortheme.darkpink,
                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15 ))),
                                  child: Text('Submit',style: GoogleFonts.rubik(color: Colors.white),)),
                               ),
                             ),
                             SizedBox(height: 20.h,)
                          ],
                        ),
                      ),
                    ),),
                  )
                ],
                
              )
            ],
          ),
        ),
      );
       },
    
    );
  }
}