import 'package:edu_minitoe/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimetblDetailPage extends StatefulWidget {
  const TimetblDetailPage({super.key});

  @override
  State<TimetblDetailPage> createState() => _TimetblDetailPageState();
}

class _TimetblDetailPageState extends State<TimetblDetailPage> {
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
                padding: const EdgeInsets.only(top: 18,right: 18,left: 18),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Container(height: 60,
                    child: Row(
                      children: [InkWell(onTap: () {
                        Navigator.pop(context);
                      },
                        child: const Icon(Icons.arrow_back)),
                        const SizedBox(width: 10,),
                        Hero(tag: 'tag',
                        child: Image.asset('assets/cropped-mintie-png.png',height: 60,)),
                      ],
                    ),
                  ),
                    Expanded(
                      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(height: 90,decoration:
                           BoxDecoration(color: MinitoeColortheme.darkpink,borderRadius: BorderRadius.circular(10)),
                           child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text('Subject',style: GoogleFonts.rubik(color: Colors.white,
                                fontSize: 20,fontWeight: FontWeight.bold)),
                              ),
                              Flexible(child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Flexible(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Class',style: GoogleFonts.rubik(color: Colors.white)),
                                      Text('Section',style: GoogleFonts.rubik(color: Colors.white)),
                                      Text('Room',style: GoogleFonts.rubik(color: Colors.white))
                                    ],
                                  )),
                                  Text('Time',style: GoogleFonts.rubik(color: Colors.white))
                                ],
                              ))
                            ],
                           ),),
                             const SizedBox(height: 20,),
                          Expanded(flex: 1,
                            child: Container(height: double.infinity,
                                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                                child: const SingleChildScrollView(child: Padding(
                                  padding: EdgeInsets.all(18.0),
                                  child: Text('Paragraph development begins with the formulation of the controlling idea. This idea directs the paragrap/nParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrapParagraph development begins with the formulation of the controlling idea. This idea directs the paragrap'),
                                )),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:     EdgeInsets.only(bottom: 30),
                child: Align(alignment: Alignment.bottomCenter,
                  child: Container(height: 50,width: 160,
                    child: ElevatedButton(onPressed: (){}, child: const Text('Complete'),
                    style:   ElevatedButton.styleFrom(backgroundColor: MinitoeColortheme.darkpink,
                    elevation: 15,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),),
                  ),
                ),
              )
        ] 
      ),
        
    );
  }
  }