import 'dart:ui';

import 'package:flutter/material.dart';

class GlobalWidget {
showSnackBar(BuildContext context,
GlobalKey<ScaffoldState> scaffoldKey, 
String msg,
{SnackBarAction? actions, bool floating = false}) {
     var snackBar = SnackBar(
       content: Text(
             msg,
             style:   const TextStyle(
             color: Colors.white,
             letterSpacing: .5,
            // fontSize: h3,
          ), 
        ),
      );
       ScaffoldMessenger.of(context).showSnackBar(snackBar);
 
  }



 Widget Attendencewidget({
       String? id,
  }){
    return ClipRRect(
      child: BackdropFilter(filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 5,
          ),
        child: Container( width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Color(0x6CFFFFFF),
              borderRadius: BorderRadius.circular(12),
            ),)));
  }




  Widget Notificationwidget({
       String? id,
  }){
    return Container();
  }


//  Widget Chartwidget({
//        String? id,
//   }){
//     return Expanded(
//                        child: Padding(
//                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                          child: Container(
//                            width: MediaQuery.of(context).size.height/2,
//                            height: MediaQuery.of(context).size.width/2,
//                            clipBehavior: Clip.antiAlias,
//                            decoration: BoxDecoration(
//                              color: Colors.white,
//                              shape: BoxShape.circle,
//                            ),
//                            child: Image.asset(
//                              'assets/bg1.png',
//                            ),
//                          ),
//                        ),
//                      );
//   }



}
