import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Hotel(),
    debugShowCheckedModeBanner: false,
  ));
}

class Hotel extends StatelessWidget {
  String text =
      'Crowne Plaza Kochi, Kerala, is an ideal staying place for both the professional and leisure travelers from across the world.\n'
      ' It is placed amidst exotic surroundings that comprise of alluring attractions of the city.\n'
      ' The hotel is blessed with excellent accommodation arrangements in the presence of fully furnished rooms and suites.\n'
      ' The staying facilities are majestically complimented by the traditional Indian hospitality at this five-star property.\n'
      ' Moreover, the extensive premises of the hotel consist of excellent arrangements for business and personal events.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 300.0),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/amz5.jpeg'),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
                bottom: 400,
                left: 20,
                child: Text(
                  'Crowne plaza\nKochi,Kerala',
                  style: GoogleFonts.roboto(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                            color: Colors.black,
                            blurRadius: 5,
                            offset: Offset(3, 3))
                      ]),
                )),
            Positioned(
              bottom: 345,
              left: 20,
              child: Container(
                height: 45,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), color: Colors.grey),
              ),
            ),
            Positioned(
                bottom: 360,
                left: 60,
                child: Text(
                  '8.4 / 85 reviews',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
            Positioned(
                bottom: 320,
                right: 30,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 35,
                )),
            Positioned(
                bottom: 270,
                left: 10,
                child: Icon(
                  Icons.star,
                  color: Colors.deepPurple,
                )),
            Positioned(
                bottom: 270,
                left: 35,
                child: Icon(
                  Icons.star,
                  color: Colors.deepPurple,
                )),
            Positioned(
                bottom: 270,
                left: 60,
                child: Icon(
                  Icons.star,
                  color: Colors.deepPurple,
                )),
            Positioned(
                bottom: 270,
                left: 85,
                child: Icon(
                  Icons.star,
                  color: Colors.deepPurple,
                )),
            Positioned(
                bottom: 270,
                left: 115,
                child: Icon(
                  Icons.star,
                  color: Colors.grey,
                )),
            Positioned(
                bottom: 240,
                left: 10,
                child: Icon(
                  Icons.location_on,
                  color: Colors.grey,
                )),
            Positioned(
                bottom: 240,
                left: 30,
                child: Text(
                  '8km to Lulu mall',
                  style: TextStyle(color: Colors.grey),
                )),
            Positioned(
                bottom: 270,
                right: 30,
                child: Text(
                  '200\$',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
                bottom: 250,
                right: 25,
                child: Text(
                  '/per night',
                  style: TextStyle(color: Colors.grey),
                )),
            Positioned(
              bottom: 170,
              left: 180,
              child: Container(height: 60,
                width: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),color: Colors.deepPurple
                ),
                child: Center(
                  child: Text(
                    'Book now',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,color: Colors.white
                  ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 20,
              child: Container(
                child: Text(
                  text,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            )
          ],
        ));
  }
}