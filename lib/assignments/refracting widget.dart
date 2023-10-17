import 'package:assignment2_july/assignments/Refracting%20Widget%20Ui.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Refractinggg(),
  debugShowCheckedModeBanner: false,));
}
class Refractinggg extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title:  Text('Recommended for you !! ', style: TextStyle(fontWeight: FontWeight.normal,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading:  Icon(Icons.arrow_circle_left_rounded),
        actions: [ Padding(
          padding: EdgeInsets.all(12.0),
          child: Icon(Icons.settings_input_composite_rounded),
        )],
      ),
      backgroundColor: Colors.black,
      body:
      GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),
        children: [

          Refracting_Ui(image: const NetworkImage('https://images.unsplash.com/photo-1566150905458-1bf1fc113f0d?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&w=2071'),
            price: '550\$',
            rating: 4.5,
            icon: Icons.favorite_border,
            sale: '706 sales',
            click: (){},
            name: ' Rose Hand-held Bag ',
          ),
          Refracting_Ui(image: const NetworkImage('https://images.unsplash.com/photo-1612817159949-195b6eb9e31a?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&w=2070'),
              name:" Watch with leather strap ",
              price: '400\$',
              rating: 4,
              icon: Icons.favorite_border,
              sale: '2156 sales',
              click: (){}),
          Refracting_Ui(image: const NetworkImage('https://images.unsplash.com/photo-1499939667766-4afceb292d05?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&w=2073'),
              name: 'Solid Stitched Flared Dress',
              price: '950\$',
              rating: 3.5,
              icon: Icons.favorite_border,
              sale: '636 sales',
              click: (){}),
          Refracting_Ui(image: const NetworkImage('https://images.unsplash.com/photo-1595341888016-a392ef81b7de?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&w=1779'),
              name: 'Casual Sneakers ',
              price: '1299\$',
              rating: 4.5,
              icon: Icons.favorite_border,
              sale: '8549 sales',
              click: (){}),
          Refracting_Ui(image: const NetworkImage('https://images.unsplash.com/photo-1602527428055-a2526fabdc9f?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&w=2070'),
              name: " Bracelet ",
              price: '499\$',
              rating: 4,
              icon: Icons.favorite_border,
              sale: '1850 sales',
              click: (){}),
          Refracting_Ui(image: const NetworkImage('https://images.unsplash.com/photo-1583209814683-c023dd293cc6?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&w=2070'),
              name: "Cosmetics",
              price: '299\$',
              rating: 3,
              icon: Icons.favorite_border,
              sale: '3765 sales',
              click: (){})

        ],
      ),
    );
  }
}