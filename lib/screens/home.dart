import 'dart:async'; 
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
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
                  decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image:
                             AssetImage(
                              'assets/bg1.png',
                            ),
                            fit: BoxFit.fill,
                          )),
                  ),

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/cropped-mintie-png.png',height: 60,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: (){}, 
                      icon: const Icon(Icons.menu))  ,
                      Container(width: 5,color: Colors.black,),
                      SizedBox(width: 11,),
                      Container(width: 200,height: 30,
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
                    SizedBox(width: 11,),
                    IconButton(onPressed: (){}, 
                      icon: const Icon(Icons.notifications)),
                   
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
         
        // bottomNavigationBar: BottomNavigationBar(items: BottomNavigationBarItem(icon: icon)),
    );
  }
  }
 


 