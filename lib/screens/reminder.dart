import 'package:edu_minitoe/screens/students.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';

import '../consts/colors.dart';
import 'activity.dart';
import 'notifications.dart';

class ReminderPage extends StatefulWidget {
  const ReminderPage({super.key});

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  
  @override
  void initState(){
    super.initState();
  }
 

  @override
  Widget build(BuildContext context) {
    
   return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) { 
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
                    SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top:20.0.sp,left: 20.sp,right: 20.sp,bottom: 0),
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
                     Padding(
                       padding:  EdgeInsets.symmetric(horizontal:10.0.r,vertical: 2.r),
                       child: GlassmorphicContainer(
                        width: MediaQuery.of(context).size.width,
                          height: 120.h,
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
                             child: Column(
                               children: [
                                Text('LKG A',style: GoogleFonts.rubik(fontSize: 23.sp,color: MinitoeColortheme.fontcolor,
                                fontWeight: FontWeight.w500,),
                                textAlign: TextAlign.center,),
                                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     Flexible(
                                        child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                      CircleAvatar(radius: 40.r,backgroundColor: MinitoeColortheme.darkpink,),
                                   SizedBox(width: 10.w,),
                                  Flexible(
                                    child: Container(height:  MediaQuery.of(context).size.width/4,
                                                  width: MediaQuery.of(context).size.width/2,
                                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Maths',style: GoogleFonts.rubik(fontSize: 20,
                                           color: MinitoeColortheme.fontcolor,fontWeight: FontWeight.w400,),),
                                          Text('10:00-10:45 AM',style: GoogleFonts.rubik(fontSize: 15,color: MinitoeColortheme.fontcolor),),
                                          Text('03-08-2023',style: GoogleFonts.rubik(fontSize: 15,color: MinitoeColortheme.fontcolor),),
                                        ],
                                      ),
                                    ),
                                  ),
                                   SizedBox(width: 40.w,),
                                  Column(mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text('No of Students',style: GoogleFonts.rubik(fontSize: 20,
                                           color: MinitoeColortheme.fontcolor),),
                                          Text('30',style: GoogleFonts.rubik(fontSize: 16,color: MinitoeColortheme.fontcolor,fontWeight: FontWeight.w400),),
                                          Text('Average Attendence',style: GoogleFonts.rubik(fontSize: 15,color: MinitoeColortheme.fontcolor),),
                                          Text('74.50 %',style: GoogleFonts.rubik(fontSize: 16,color: MinitoeColortheme.fontcolor,fontWeight: FontWeight.w400),),
                                        ],
                                      ),
                                 ],),
                            ),
                          ]),
                           ],
                         ),
                     ),),
                     ),
                    Padding(
                      padding:  EdgeInsets.only(top: 10.0.r,left: 10.r,bottom: 5.r),
                      child: Text('Today\'s Reminder',style: GoogleFonts.rubik(fontSize: 20.sp,color: MinitoeColortheme.fontcolor),),
                    ),
                     Container(color: MinitoeColortheme.darkpink,width: MediaQuery.of(context).size.width,
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 5),
                         child: Text('Lorem Ipsum dolit dsjhd jdkjsd jhbdsjk',style: GoogleFonts.rubik(fontSize: 15,color: Colors.white,
                         fontWeight: FontWeight.w300,
                         backgroundColor:MinitoeColortheme.darkpink),),
                       ),
                     ),
                    Padding(
                      padding:  EdgeInsets.only(top: 10.0.r,left: 10.r),
                      child: Text('Roman Numerals',style: GoogleFonts.rubik(fontSize: 20.sp,color: MinitoeColortheme.fontcolor),),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(10.h),
                      child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                      height: 180.h,
                        child: ListView(
                          children: [
                            Padding(
                              padding:  EdgeInsets.all(10.r),
                              child: Container(
                                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Activity 1',style: GoogleFonts.rubik(fontSize: 20,
                                   color: Colors.black),),
                                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text('Lorem Ipsum  fgdb   dfgjhf fhj dhfd vhdv dLorem Ipsum ',softWrap: true,
                                     style: GoogleFonts.rubik(fontSize: 15,
                                       color: Colors.black),),
                                     InkWell(onTap: () {
                                       Navigator.push(context, MaterialPageRoute(builder: (context)=>const ActivityPage()));
                                     },
                                      child: const Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,))
                                   ],
                                 )
                                ],
                               ),
                              ),
                            ),
                          Padding(
                            padding:  EdgeInsets.all(10.r),
                            child: Container(
                              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Activity 2',style: GoogleFonts.rubik(fontSize: 20,
                                   color: Colors.black),),
                                 Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text('Lorem Ipsum  fgdb   dfg dfhbdsjhf fhj dhfd vvvhdv dL ',softWrap: true,
                                     style: GoogleFonts.rubik(fontSize: 15,
                                       color: Colors.black),),
                                       const Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
                                   ],
                                 )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.all(10.r),
                            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Activity 3',style: GoogleFonts.rubik(fontSize: 20,
                                 color: Colors.black),),
                               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text('Lorem Ipsum fgdb   dfg dfhbdsjhf fhj dhfd vvvhdv dh',softWrap: true,
                                   style: GoogleFonts.rubik(fontSize: 15,
                                     color: Colors.black),),
                                     const Icon(Icons.arrow_forward_ios,color: Colors.black,size: 15,)
                                 ],
                               )
                              ],
                            ),
                          ),
                          ]
                        ),
                      ),
                    ),
                     Padding(
                       padding:  EdgeInsets.only(top :5.0.r,left: 10.r),
                       child: Text('Students',style: GoogleFonts.rubik(fontSize: 20.sp,color: MinitoeColortheme.fontcolor),),
                     ),
                      Padding(
                       padding:  EdgeInsets.all(10.0.sp),
                       child: GlassmorphicContainer(
                        width: MediaQuery.of(context).size.width,
                          height: 80.h,
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
                          
                          child: Row(
                            children: [
                              Expanded(
                                child: ListView(scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                    children:  [
                                      Padding(
                                        padding: EdgeInsets.all(8.0.r),
                                        child: CircleAvatar(radius: 30.r,backgroundColor: MinitoeColortheme.darkpink,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0.r),
                                        child: CircleAvatar(radius: 30.r,backgroundColor: MinitoeColortheme.darkpink,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0.r),
                                        child: CircleAvatar(radius: 30.r,backgroundColor: MinitoeColortheme.darkpink,),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0.r),
                                        child: CircleAvatar(radius: 30.r,backgroundColor: MinitoeColortheme.darkpink,),
                                      ),
                                    ],
                                ),
                              ),
                              InkWell(onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const StudentsPage()));
                              },
                                child: Padding(
                                  padding:  EdgeInsets.only(right: 8.0.r),
                                  child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 30.r,),
                                ),
                              )
                            ],
                          ),),
                     ),
                      Padding(
                       padding:  EdgeInsets.only(top:5.0.r,left: 10.r),
                       child: Text('Remarks',style: GoogleFonts.rubik(fontSize: 20.sp,color: MinitoeColortheme.fontcolor),),
                     ),
                     Padding(
                       padding: EdgeInsets.all(10.r),
                       child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                       child: Padding(
                         padding:  EdgeInsets.all(10.r),
                         child: Text('fdsfdgfdgvdfjsdhfjsdhfjdsfbjdbfvhjdbvdjvbcnxbvcxjbfvhjdbfvjcdhnbvjhbvhjfdbvjhfvb',
                         style: GoogleFonts.rubik(color: Colors.black),),
                       ),),
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
                  ])
                  )
            ]
          )
     )
    );
    }
  );
 }
}
 
