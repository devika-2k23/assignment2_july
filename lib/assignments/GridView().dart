import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: GridVieww(),
    debugShowCheckedModeBanner: false,
  ));
}

class GridVieww extends StatelessWidget {
  var names = [
    'U.S.A',
    'Russia',
    'Canada',
    'England',
    'France',
    'Germany',
  ];

  var pics = [
    'assets/images/amz.jpeg',
    'assets/images/amz2.jpg',
    'assets/images/amzzz3.jpeg',
    'assets/images/amzzz4.jpg',
    'assets/images/amzzz5.jpg',
    'assets/images/amzzz6.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Great Outdoorss!!',
          style: GoogleFonts.b612(
            fontSize: 30,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 6,
        itemBuilder: (contex, index) {
          return Container(
            margin: EdgeInsets.all(10),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(pics[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    child: Text(
                      names[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}