import 'dart:async';

import 'package:edu_minitoe/screens/login.dart';
import 'package:flutter/material.dart';

class MySplashPage extends StatefulWidget {
  const MySplashPage({super.key});

  @override
  State<MySplashPage> createState() => _MySplashPageState();
}

class _MySplashPageState extends State<MySplashPage> {
  
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3), () async {
      await Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (BuildContext context) => const OtpPage()));
    });
  }
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
     
      body: 
         SizedBox(
          height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
          child: Stack(
            children:[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/splashimg.jpg',
                          ),
                          fit: BoxFit.fill,
                        )),
                ),
              Padding(
                padding: const EdgeInsets.all(35.0),
                // child: Hero(tag: 'tag',
                child: 
                Center(child: Container(child: Image.asset('assets/cropped-mintie-png.png',fit: BoxFit.fill,))),

                // createRectTween:  (begin, end) {
                //      return MaterialRectArcTween(begin: begin, end: end);
                //    },
                // flightShuttleBuilder: (BuildContext flightContext,
                //     Animation<double> animation,
                //     HeroFlightDirection flightDirection,
                //     BuildContext fromHeroContext,
                //     BuildContext toHeroContext,) {
                //       // final Hero toHero = toHeroContext.size;
                //       return OtpPage();
                //       }
                // ),
              )
            ] 
          ),
       
      ),
        
    );
  }
  }
 


// hero animation 
  class CustomPageRoute<T> extends PageRoute<T> {

    @override
    Widget buildPage( 
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation
    ) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    }
    final Widget child;
  
    CustomPageRoute(this.child);
  
    @override
    Color get barrierColor => Colors.black;
  
    @override
    String get barrierLabel => '';
  
    @override
    bool get maintainState => true;
  
    @override
    Duration get transitionDuration => const Duration(seconds: 2);
  
  
  }