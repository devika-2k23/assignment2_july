import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Refracting_Ui extends StatelessWidget {
  NetworkImage? image;
  String? name;
  String? price;
  double? rating;
  IconData? icon;
  String? sale;
  VoidCallback? click;

  Refracting_Ui({
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
    required this.icon,
    required this.sale,
    required this.click
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: click!,
      child: Card(
        color: Colors.grey[850],
        child: Column(
          children: [
            Stack(children: [
              Padding(
                  padding:  EdgeInsets.all(15.0),
                  child: ClipRRect(borderRadius: BorderRadius.circular(20),
                      child: Image(image: image!,)
                  )
              )],),
            Padding(
              padding: const EdgeInsets.only(bottom: 10,top: 5),
              child: Text(name!, style: GoogleFonts.tiltNeon(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(price!, style: GoogleFonts.tiltNeon(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blue),),
            ),
            RatingBar.builder(
              initialRating: rating!,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 15,
              itemPadding: EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
              unratedColor: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 240,),
              child: Column(
                children: [
                  Icon(icon!,color: Colors.white,size: 10,),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(sale!,style: TextStyle(color: Colors.white,fontSize: 10),),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}