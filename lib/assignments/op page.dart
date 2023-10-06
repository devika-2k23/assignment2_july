import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Details(),
  ));
}

class Details extends StatelessWidget {
  String detail =
      '''Tourism in France directly contributed 79.8 billion euros to gross domestic product (GDP) in 2013,\n'''
      ''' 30% of which comes from international visitors and 70% from domestic tourism spending.\n'''
      ''' The total contribution of travel and tourism represents 9.7% of GDP and supports \n '''
     '' '2.9 million jobs (10.9% of employment) in the country.\n'''
      '''Tourism contributes significantly to the balance of payments.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 400.0),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/amzzz4.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            bottom: 360,
            left: 20,
            child: Text(
              'France',
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(left: 20, bottom: 270, child: Text(detail)),
          Positioned(
            bottom: 200,
            left: 20,
            child: Text(
              'places to vist',
              style:
              GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5,left: 40,top: 560),
              child: CircleAvatar(
                radius: 50,
               backgroundImage: AssetImage('assets/images/amzzz5.jpg'),
               // backgroundColor: Colors.green,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5,left: 180,top: 560),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/amzzz4.jpg'),
                // backgroundColor: Colors.green,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 5,left: 310,top: 560),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/amzzz3.jpeg"),
                // backgroundColor: Colors.green,
              ),
            ),
          )
        ],
      ),
    );
  }
}