import 'package:edu_minitoe/consts/colors.dart';
import 'package:edu_minitoe/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

import '../globalwidgets.dart';


class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();
  TextEditingController mobilecontroller=TextEditingController();
   final globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
     
      body: Stack(
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
                      fit: BoxFit.cover,
                    )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 500),
              child: Image.asset('assets/teacherkids.png',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              colorBlendMode: BlendMode.dstATop,
                 color: Colors.white.withOpacity(.15),
                    filterQuality: FilterQuality.low,),
            ),
          Padding(
            padding: const EdgeInsets.only(left:38.0, top: 3,right: 38),
            child: SingleChildScrollView(
              child: GestureDetector(
                child: Column(
                  children: [
                    Hero(tag: 'tag',
                    child: Image.asset('assets/cropped-mintie-png.png',height: 200,)),
                      Text('Login to Continue',textAlign: TextAlign.center,
                    style: GoogleFonts.rubik(fontSize: 25 ),),
                    const SizedBox(height: 30,),
                     TextFormField( 
                      controller: mobilecontroller,
                      keyboardType: TextInputType.number, 
                      decoration: const InputDecoration( 
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Mobile Number',
                      labelStyle: TextStyle(color: MinitoeColortheme.primaryappcolorlightpink),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                      Container(alignment: Alignment.topRight, 
                        child: InkWell(child: Text('send OTP',style: 
                        GoogleFonts.rubik(color: MinitoeColortheme.textbutton),
                        textAlign: TextAlign.right,),
                         
                        onTap: () { 
                          if (mobilecontroller.text.length == 10) {
                            GlobalWidget().showSnackBar(context,
                                globalKey, 'Success');
                          } else if (mobilecontroller.text.isEmpty) {
                            GlobalWidget().showSnackBar(context,
                                globalKey, 'Enter  Mobile Number');
                          } else if (mobilecontroller.text.length <10) {
                            GlobalWidget().showSnackBar(context,
                                globalKey, 'Mobile number must be 10 digits');
                          } else {
                            GlobalWidget().showSnackBar(context,
                                globalKey, 'Enter Correct  Mobile Number');
                          }
                        },
                        ),
                      ),
                    const SizedBox(height: 20,),
                    
                          
                  OtpPinField(
                  key: _otpPinFieldController,
                  fieldWidth: 40,
                  fieldHeight: 50,
                  autoFocus: false,
                  showDefaultKeyboard: true,
                  autoFillEnable: false,
                  textInputAction: TextInputAction.done,
                  onSubmit: (text) {
                    print('Entered pin is $text');  
                  },
                  onChange: (text) {
                    print('Enter on change pin is $text');  
                  },
                  onCodeChanged: (code) {
                    print('onCodeChanged  is $code');
                  },  
                  otpPinFieldStyle: const OtpPinFieldStyle(  
                      defaultFieldBorderColor: Colors.white, 
                      activeFieldBorderColor: Colors.white, 
                      defaultFieldBackgroundColor: Colors.white,
                      activeFieldBackgroundColor: Colors.white,
                      fieldBorderRadius: 30,
                      ),
                  maxLength: 4, 
                  showCursor: true, 
                  cursorColor: Colors.pink,  
                  showCustomKeyboard: false, 
                  cursorWidth: 3,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  otpPinFieldDecoration:OtpPinFieldDecoration.defaultPinBoxDecoration),
                      const SizedBox(height: 20,),
                       Container(alignment: Alignment.topRight,
                         child: InkWell(child:
                          Text('Resend OTP',style: 
                          GoogleFonts.rubik(color: MinitoeColortheme.textbutton),
                         textDirection: TextDirection.rtl,)),
                       ),
                    const SizedBox(height: 25,),
              
                    Container(
                      height: 70,
                         decoration: const BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(35)),
                           boxShadow: <BoxShadow>[
                             BoxShadow(
                               color: Color.fromARGB(255, 245, 171, 196),
                               blurRadius: 4,
                               offset: Offset(9, 9),
                               spreadRadius: 4,
                               blurStyle: BlurStyle.normal
                             ),
                           ],
                         ),
              
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, 
                          PageRouteBuilder(pageBuilder: (_, __, ___) =>const HomePage(),
                          transitionDuration: Duration(seconds: 2),
                          // reverseTransitionDuration: Duration(seconds: 2)
                          ));
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.only(left: 80,right: 80,top: 20,bottom: 20),
                        // elevation: 20,
                        backgroundColor: const Color.fromARGB(255, 250, 121, 164),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35))
                        ) , 
                      child:   Text('Log In',style: GoogleFonts.rubik(fontSize: 22),),
                      ),
                    ),
                    const SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
          )
        ] 
      ),
        
    );
  }
  }