import 'package:edu_minitoe/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  
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
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/cropped-mintie-png.png',height: 70,),
                    Flexible(child: Row(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back,size: 25,)),
                      const SizedBox(width: 15,),
                      const Text('Notifications',style: TextStyle(color: MinitoeColortheme.fontcolor,
                      fontSize: 25,fontWeight: FontWeight.bold),),
                    ],
                  )),
                  const SizedBox(height: 10,),
                  Stack(
                    children: [Card(shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                      color: const Color.fromARGB(255, 83, 15, 95),
                    child: Container(height: MediaQuery.of(context).size.height/10,
                      width: MediaQuery.of(context).size.height/5,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 83, 15, 95),
                      borderRadius: BorderRadius.circular(10)),child: Padding(
                      padding: const EdgeInsets.only(top: 8,left: 20),
                      child: Text('Today',style: GoogleFonts.rubik(color: Colors.white,fontSize: 20),),
                    ),
                    ),),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Card(
                          // height: MediaQuery.of(context).size.height/4,
                        // width: MediaQuery.of(context).size.width,
                        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        //   color: const Color.fromARGB(255, 250, 222, 232)),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        color: const Color.fromARGB(255, 250, 222, 232),
                          child:   Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Heading',style: GoogleFonts.rubik(fontWeight: FontWeight.bold),),
                                Text('Lorem ipsum dolor sitllis ermentus tortor magna vitaEtiam aliquet dui gvhvhjjhbjkravida lectus porta tincidunt. Mauris convallisvolutpat.vut volutpat ipsum finibus at. Phasellus at finibus turpis. Aenean elit metus, pulvinar id mi eget, faucibus convallis elit. Vivamus tempus turpis sed dapibus graommodo lorem.',
                                    style: GoogleFonts.rubik(color: Colors.black),),
                                Card(color: Colors.pink[100],child: const Text('10:30 am'),),
                                const Divider(thickness: 2,color: Color.fromARGB(255, 204, 158, 173),)
                              ],
                            ),
                          ),),
                      ),]
                  ),
                ],
              ),
            )
          ],
        ),
      ),
        
    );
  }
  }
