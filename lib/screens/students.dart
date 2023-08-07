import 'package:edu_minitoe/consts/colors.dart';
import 'package:edu_minitoe/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'notifications.dart';
class StudentsPage extends StatefulWidget {
  const StudentsPage({super.key});


  @override
  State<StudentsPage> createState() => _StudentsPageState();
}

class _StudentsPageState extends State<StudentsPage> {

  
  @override
  void initState(){
    super.initState();
  
  }
  bool showvalue= false;  
  int value = 0;
  Widget CustomRadioButton(String text, int index) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          value = index;
        });
      },
      style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),)
          ),
      child: Text(
        text,
        style: TextStyle(
          color: (value == index) ? Colors.green : Colors.red,
        ),
      ),
     
    );
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
                       padding:  EdgeInsets.only(top :5.0.r,left: 10.r),
                       child: Text('Students',style: GoogleFonts.rubik(fontSize: 20.sp,color: MinitoeColortheme.fontcolor),),
                     ),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical:10.0.r),
                      child: GlassmorphicContainer(
                          width: MediaQuery.of(context).size.width,
                            height: 90.h,
                            borderRadius: 2,
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
                               padding:  EdgeInsets.all(8.0.r),
                               child: Row(children: [
                                // Checkbox(  
                                  //   value: this.showvalue,   
                                  //   onChanged: (bool value) {  
                                  //     setState(() {  
                                  //       this.showvalue = value;   
                                  //     });  
                                  //   },  
                                  // ),
                                CircleAvatar(radius: 30.r,backgroundColor: MinitoeColortheme.darkpink,),
                                SizedBox(width: 10.w,),
                                Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Alen K PAul',style: GoogleFonts.rubik(fontSize: 20,fontWeight: FontWeight.w600,
                                           color: MinitoeColortheme.fontcolor),),
                                    Text('Roll No: 1',style: GoogleFonts.rubik(fontSize: 20,
                                           color: MinitoeColortheme.fontcolor),),
                                  ],
                                ),
                                SizedBox(width: 50.w,),
                                Row(
                                  children: <Widget>[
                                   CustomRadioButton("Present", 1),
                                   SizedBox(width: 5.w,),
                                   CustomRadioButton("Absent", 2),
                                 ],
                                ),
                                
                               ],),
                               
                       ),),
                    ),
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