import 'package:flutter/material.dart';

class ReportDetailPage extends StatefulWidget {
  const ReportDetailPage({super.key});

  @override
  State<ReportDetailPage> createState() => _ReportDetailPageState();
}

class _ReportDetailPageState extends State<ReportDetailPage> {
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
                padding: const EdgeInsets.all(18.0),
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
                    Container(height: MediaQuery.of(context).size.height/1.5,color: Colors.amber,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(height: 80,
                              decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.circular(10)),),
                               const SizedBox(height: 10,),
                            Container(height: MediaQuery.of(context).size.height/4,
                                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
        ] 
      ),
        
    );
  }
  }