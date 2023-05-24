import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobalWidget {
showSnackBar(BuildContext context,GlobalKey<ScaffoldState> scaffoldKey, String msg,
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
    
        
    // _scaffoldKey.currentState!.snackBar(
    //   SnackBar(
    //       content: Text(msg),
    //       behavior:
    //           floating ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
    //       duration:
    //           actions == null ? Duration(seconds: 2) : Duration(seconds: 10),
    //       action: actions),
    // );
  }
}
