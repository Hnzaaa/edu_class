
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

            Column(
              children: [
                Image.asset('assets/cropped-mintie-png.png'),
                const Expanded(child: Row(
                  children: [
                    Icon(Icons.arrow_back),
                    Text('Notifications',style: TextStyle(color: Colors.black),)
                  ],
                ))
              ],
            )
          ],
        ),
      ),
        
    );
  }
  }
