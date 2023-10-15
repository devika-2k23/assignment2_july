import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(const MaterialApp(
    home: Now_playing(),
    debugShowCheckedModeBanner: false,
  ));
}

class Now_playing extends StatefulWidget {
  const Now_playing({super.key});

  @override
  State<Now_playing> createState() => _Now_playingState();
}

class _Now_playingState extends State<Now_playing> {
  double slidervalue=0.2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Now playing',style: GoogleFonts.montserrat(color: Colors.pink[100],fontWeight: FontWeight.bold,fontSize: 30),),
        centerTitle: true,
        leading: Icon(Icons.keyboard_arrow_down,color: Colors.pink[100],),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 280,
              width: 250,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: NetworkImage("https://i.scdn.co/image/ab67616d0000b2739a494f7d8909a6cc4ceb74ac"),
                    fit: BoxFit.cover,
                  ),
              ),
            ),
             SizedBox(height: 50,),
            Text('Under The Influence',style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,color: Colors.pink[100],fontSize: 25),),
            const SizedBox(height: 20,),
            const Text('Chris Brown',style: TextStyle(color: Colors.white),),
            const SizedBox(height: 20,),
            Container(
              width: 400,
              child: Slider(

                activeColor: Colors.pink[100],
                inactiveColor: Colors.white,
                value: slidervalue,
                min: 0.0,
                max: 0.5,
                onChanged: (double value) {
                  // Handle progress change
                  setState(() {
                    slidervalue = value;
                  });
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 60,right: 60),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('01:24',style: TextStyle(color: Colors.white),),
                  Text('03:13',style: TextStyle(color: Colors.white),)
                ],),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 80.0),
                  child: Column(
                    children: [
                      Icon(Icons.download,color: Colors.white),
                      SizedBox(height: 10,),
                      Icon(Icons.volume_mute,color: Colors.white,)
                    ],
                  ),
                ),
                const Icon(Icons.shuffle_rounded,color: Colors.white,size: 20,),
                const SizedBox(width: 10,),
                const Icon(Icons.skip_previous,size: 50,color: Colors.grey,),
                Icon(Icons.play_circle_sharp,color: Colors.pink[100],size: 60,),
                const Icon(Icons.skip_next,size: 50,color: Colors.grey,),
                const SizedBox(width: 10,),
                const Icon(Icons.loop,color: Colors.white,size: 20,),
                const Padding(
                  padding: EdgeInsets.only(left: 80.0),
                  child: Column(
                    children: [
                      Icon(Icons.star_border_outlined, color: Colors.white,),
                      SizedBox(height: 10,),
                      Icon(Icons.queue_music_outlined,color: Colors.white,)
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Playlist",style: GoogleFonts.montserrat(fontSize: 12,color: Colors.pink[100]),),
                const Text(" | ",style: TextStyle(color: Colors.white,fontSize: 16),),
                Text('Lyrics',style: GoogleFonts.montserrat(fontSize: 12,color: Colors.pink[100]),)
              ],
            ),
            const SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}