import 'package:assignment2_july/assignments/op%20page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  var pics = [
    'assets/images/amzzz4.jpg',
    'assets/images/amzzz3.jpeg',
    'assets/images/amzzz6.webp',
    'assets/images/amzzz5.jpg',
    'assets/images/hotl1.jpg',
    'assets/images/amz.jpeg'
  ];
  var names = ['France', 'Germany', 'India', 'Italy', 'Maldives', 'Spain'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('Popular',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.black
          ),),
        ),

        body: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  if(index==0){
                    Navigator.of(context).push(MaterialPageRoute(builder:(context)=> Details()));
                  }
                },
                child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0,bottom: 10),
                        child: Container(
                          height: 200, // Set the desired card image height
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(pics[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          left: 20,
                          child: Text(names[index],style: GoogleFonts.roboto(fontSize: 30,fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows: [Shadow(
                                  color: Colors.black,
                                  offset: Offset(5, 5),
                                  blurRadius: 5
                              )]),
                          ))

                    ]),
              );
            }));
  }}