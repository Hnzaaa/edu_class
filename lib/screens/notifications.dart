import 'package:edu_minitoe/consts/colors.dart';
import 'package:flutter/material.dart';

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
                  Flexible(child: Container(height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      color: Colors.pink[100]),)),
                ],
              ),
            )
          ],
        ),
      ),
        
    );
  }
  }
