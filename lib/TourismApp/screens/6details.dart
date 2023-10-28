import 'package:assignment2_july/TourismApp/screens/7explore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main(){
  runApp(const MaterialApp(debugShowCheckedModeBanner:false,home: DetailsPage(),));
}

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Padding(
          padding: const EdgeInsets.symmetric(vertical:40),
          child: ListView(
              children: [
                ListTile(
                  title: const Text('Most Furious Places & Peaceful',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  subtitle: const Text(
                    'Natural Places',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: Colors.black),
                  ),
                  trailing: Container(
                    height: 100,
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZSdxvlyFrJy2Sie-9jMLifDUgasXTiWUqag&usqp=CAU',
                      fit: BoxFit.fitHeight,width:100,height: 150,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:10),
                      child: RatingBar.builder(
                          initialRating: 4.5,
                          itemCount: 5,
                          allowHalfRating: true,
                          direction: Axis.horizontal,
                          itemSize: 25,
                          itemBuilder: (context,_)=>const Icon(Icons.star_outlined,color: Colors.amber,),
                          onRatingUpdate:(rating){
                            print(rating);
                          }),
                    ),
                    const SizedBox(width: 15,),
                    const Text('4.5 Rating',style: TextStyle(color: Colors.black54,fontSize: 14),)
                  ],
                ),
                const SizedBox(height: 20,),
                const Padding(
                  padding: EdgeInsets.only(left:15),
                  child: Text('About Places',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                const SizedBox(height: 8,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('''A tourist attraction is a place of interest
that tourists visit, typically for its inherent or an 
exhibited natural or cultural value, historical significance, natural or 
built beauty, offering leisure and amusement.''',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),),
                      const SizedBox(height: 20,),
                      const Text('Special Facilities',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 15,),
                      const Row(
                        children: [
                          Icon(Icons.car_repair_sharp,color:Colors.lightBlue,),
                          SizedBox(width: 8,),
                          Text('Parking',style: TextStyle(color: Colors.lightBlue,fontSize: 15),),
                          SizedBox(width: 80,),
                          Icon(Icons.headset_mic_outlined,color: Colors.lightBlue,),
                          SizedBox(width: 8,),
                          Text('24X7 Support',style: TextStyle(color: Colors.lightBlue,fontSize: 15),),
                          SizedBox(width: 80,),
                          Icon(Icons.wifi,color: Colors.lightBlue,),
                          SizedBox(width: 8,),
                          Text('Free WiFi',style: TextStyle(color: Colors.lightBlue,fontSize: 15),),
                        ],
                      ),
                      const SizedBox(height: 8,),
                      Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: const Image(image:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWgLdM7a303hfQnJy5AehPzI'
                                '7jdNVuTLtFO9zuUAO7bzzTUabAtD9RprylwQ6g6NlPUgs&usqp=CAU'),),
                          )),
                      const SizedBox(height: 25,),
                      const Text('Special Facilities',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 25,),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 80,
                            child: const Card(
                              color: Colors.blueGrey,
                              child: Text('Adult',style: TextStyle(fontSize: 12),textAlign: TextAlign.center,),
                            ),
                          ),
                          const SizedBox(width: 50,),
                          Container(
                            height: 40,
                            width: 80,
                            child: const Card(
                                color: Colors.blueGrey,
                                child: Text('Adult',style: TextStyle(fontSize: 12),textAlign: TextAlign.center,)),
                          ),
                          const SizedBox(width: 50,),
                          Container(
                            height: 40,
                            width: 80,
                            child: const Card(
                                color: Colors.blueGrey,
                                child: Text('Adult',style: TextStyle(fontSize: 12),textAlign: TextAlign.center,)),
                          ),
                          const SizedBox(width: 50,),
                          Container(
                            height: 40,
                            width: 80,
                            child: const Card(
                                color: Colors.blueGrey,
                                child: Text('Adult',style: TextStyle(fontSize: 12),textAlign: TextAlign.center,)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 450,
                          child: ElevatedButton(
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Explore_Now()));
                              }, child:const Text('Explore Now',style: TextStyle(color: Colors.white),)),
                        ),
                      )
                    ],
                  ),
                )
              ]),
        )
    );
  }
}