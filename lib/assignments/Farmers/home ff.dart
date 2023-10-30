import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'blog refracting wid.dart';
import 'refracting wid ff.dart';
void main(){
  runApp(MaterialApp(
    home: Home_ffz(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home_ffz extends StatefulWidget {


  @override
  State<Home_ffz> createState() => _Home_ffzState();
}
var selectedIndex=0;
late PageController controller;

var titles=[
  'OFFERS',
  'VEGETABLES',
  'FRUITS',
  'EXOTIC',
  'FRESH CUTS',
  'NUTRITION CHARGERS',
  'PACKED FLAVORS',
  'GOURMET SALADS'
];

var img=[

  'https://media.istockphoto.com/id/1322156854/vector/best-offer-advertising-sticker.jpg?s=612x612&w=0&k=20&c=pYEbyAxOBvyNZT5IQFsS2HANsqfjz4KzKQkmANhKm0c=',
  'https://media.istockphoto.com/id/512993458/photo/various-leafy-vegetables.jpg?s=170667a&w=is&k=20&c=wfM4TafXwNpo_kB5ogKXBukc9eHpYFYRstcFHSEbQA8=',
  'https://media.istockphoto.com/id/152157091/photo/fresh-fruit-on-a-plate.jpg?s=612x612&w=0&k=20&c=MkZCCKwY1aBbPaZJ2OSBczFENmr67KCZdamHBS8l80k=',
  'https://media.istockphoto.com/id/579165978/photo/broccoli.jpg?s=612x612&w=0&k=20&c=n7JyR5LPZFig5Q8hH_10t3NsO0h_ceDdWo3djc1LlpI=',
  'https://images.unsplash.com/photo-1598295309854-cfa5819004d8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1171&q=80',
  'https://media.istockphoto.com/id/1047798504/photo/bowl-dish-with-brown-rice-cucumber-tomato-green-peas-red-cabbage-chickpea-fresh-lettuce-salad.jpg?s=612x612&w=0&k=20&c=xAXkGII7E_NJ_JH2Sz9oy307EbowN5u_UODDM1K019g=',
  'https://images.unsplash.com/photo-1596040033229-a9821ebd058d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
  'https://media.istockphoto.com/id/919666108/photo/two-fresh-salad-bowls.jpg?s=612x612&w=0&k=20&c=um1r6jBH5LAuWCswQipXtFxb--099SF0OJMtss-L_-c='
];

var buyimg=[
  'https://media.istockphoto.com/id/1015995028/photo/fresh-carrot-bunches-in-open-air-market.jpg?s=612x612&w=0&k=20&c=aawVlKTmhZintF7sSJoklMfhT7yLmPQdubTlcF63gl4=',
  'https://media.istockphoto.com/id/1204009861/photo/healthy-vegetables-salad-with-roasted-chicken-breast.jpg?s=612x612&w=is&k=20&c=ylu9AMRSbqE_VqqtsuG7GCOE2tQ-OhOPfq_LduVSAmM=',
  'https://media.istockphoto.com/id/1132371208/photo/three-ripe-tomatoes-on-green-branch.jpg?s=612x612&w=0&k=20&c=qVjDb5Tk3-UccV-E9gqvoz97PTsP1QmBftw27qA9kEo=',
  'https://media.istockphoto.com/id/174959827/photo/banana.jpg?s=612x612&w=0&k=20&c=rx4zQuWlGafwqqIjF_z4wEGh0BzSxiZcMxFjtwFxUXU=',
  'https://media.istockphoto.com/id/119605884/photo/citrus-fresh-fruits.jpg?s=612x612&w=0&k=20&c=I_mMbPp3BzTr_YTW1_eXNGhofdGoc6tDr23iBrw53pA=',
  'https://media.istockphoto.com/id/507180560/photo/okras-with-raw-okra-in-farm.jpg?s=612x612&w=0&k=20&c=jU1TKJAq3eUtO9bvLzQsNAXNohznfK6TjGc03TODnk8=',
  'https://media.istockphoto.com/id/655979026/photo/fresh-harvested-organic-spinach.jpg?s=612x612&w=0&k=20&c=qoMmnp5ICdqWKPYQKo189yG4Ckayy6Rqx4gg0-yMmfI=',
  'https://media.istockphoto.com/id/1036169082/photo/mix-of-forest-mushrooms-on-cutting-board-over-old-wooden-table.jpg?s=612x612&w=0&k=20&c=YXUiycWIWArX8OUENNPloBZOnGaMXWr1GxTHtPYCk_A='
];

var buynames=[
  'Carrot (400g)',
  'Aviyal cut (500g)',
  'Tomato (500g)',
  'Njali poovan(500g)',
  'Citrus (500g)',
  'Ladies finger',
  'spinach (200g)',
  'mushroom (200g)',
];

var buyprice=[
  '₹38',
  '₹89',
  '₹16',
  '₹54',
  '₹145',
  '₹19.2',
  '₹17',
  '₹72'
];

var buyqty=[
  '1.00 NOS',
  '1 BOX',
  '1.00 NOS',
  '1.00 NOS',
  '1.00 NOS',
  '0.30 Kg',
  '1.00 NOS',
  '1.00 NOS'

];
///blog
var blogimg=[
  'https://media.istockphoto.com/id/183300149/photo/broccoli.jpg?s=2048x2048&w=is&k=20&c=iAXEw4BSHc1pdjfdLtKKbcTyhgtROdpooETzFt8D3IU=',
  'https://media.istockphoto.com/id/1352919035/photo/tired-woman-with-closed-eyes-touching-nose-bridge.jpg?s=612x612&w=is&k=20&c=36DhPeT3RKrwVncWllVBvBdVtppDAOPPUTXOF9Ye2sk=',
  'https://media.istockphoto.com/id/1320153696/photo/blood-pressure-meter-and-toy-heart-on-light-blue-background.jpg?s=612x612&w=0&k=20&c=6ViH-bC6RqT3v7g8z5dHhAkpN7AHodCWhs_h0cN6_28='
];
var blogtitle=[
  '5 Reasons why broccoli..',
  '5 tips that prevenrts you from..',
  'Control blood pressure by..'
];


class _Home_ffzState extends State<Home_ffz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.greenAccent[700],
            pinned: false,
            floating: true,
            title: Text('FARMERS FRESH ZONE',
              style: GoogleFonts.mohave(fontWeight: FontWeight.bold),),
            actions: const [Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.location_on_outlined),
                SizedBox(width: 5,),
                Text('Kochi', style: TextStyle(fontSize: 18),),
                Icon(Icons.keyboard_arrow_down)
              ],),
            )
            ],

            bottom: AppBar(
              backgroundColor: Colors.greenAccent[700],
              title: Container(height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      hintText: 'Sarch for Vegetables, Fruits..',
                      prefixIcon: const Icon(Icons.search)
                  ),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child:Container (
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(8, (index) => Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),color: Colors.green[50],
                        border: Border.all(color: Colors.green)
                    ),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Text(titles[index],style: const TextStyle(color: Colors.green),),
                    )),
                  ),
                )),
              ),
            ),
          ),
          ///Carousal slider
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) =>
                  CarouselSlider(items: [
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage(
                              'assets/images/farrr111.jpg'),
                              fit: BoxFit.contain)
                     , ),

                    ),
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage(
                              'assets/images/ff2.jpg'),
                              fit: BoxFit.cover)
                      ),
                    )
                  ], options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: 1,
                      height: 200,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: const Duration(seconds: 2)
                  )),
                  childCount: 1
              )
          ),
          ///30 min plicy
          SliverList(delegate: SliverChildBuilderDelegate(
              childCount: 1, (context, index) =>
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 100,
                  width: 250,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 15),
                        child: Container(
                          height: 100, width: 75,
                          decoration: const BoxDecoration(
                          ),
                          child: const Column(
                            children: [
                              Image(image: NetworkImage(
                                  'https://media.istockphoto.com/id/530349577/photo/30-minutes-30-seconds-6-hours.jpg?s=2048x2048&w=is&k=20&c=F45nQAafEzNAoiCNr3zq_XgrZ3U4kaTSfa1Bgm9hHyg=')),
                              Text('30 MINS POLICY', style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60, right: 15),
                        child: Container(
                          height: 70, width: 75,
                          decoration: const BoxDecoration(
                          ),
                          child: const Column(
                            children: [
                              Image(image: NetworkImage(
                                  'https://media.istockphoto.com/id/1349047104/photo/cartoon-character-hand-holds-smart-phone.jpg?s=2048x2048&w=is&k=20&c=lT39XlN1XBLJ1kYk0JsOIuH4cqWP-3rMtzsa3nmBIXE=')),
                              Text('TRACEABILITY', style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80,),
                        child: Container(
                          height: 90, width: 75,
                          decoration: const BoxDecoration(
                          ),
                          child: const Column(
                            children: [
                              Image(image: NetworkImage(
                                  'https://media.istockphoto.com/id/928726496/vector/child-farmer.jpg?s=2048x2048&w=is&k=20&c=T2K2D3JUeLUBSo3hE26F9V7cCbpnoxwRhZ5MQxtSSns=')),
                              Text('LOCAL SOURCING', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 8),)
                            ],
                          ),
                        ),
                      )
                    ],

                  ),
                ),
              ))),
          ///categories
          const SliverToBoxAdapter(child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Shop by category',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                if (index == 0) {
                  return GridView.builder(
                    shrinkWrap: true,
                    primary: false,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: 8,
                    // Number of images
                    itemBuilder: (BuildContext context, int gridIndex) {
                      return Card(
                        child: Column(
                          children: [
                            Image.network(img[gridIndex]),
                            // Use different image URLs
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(titles[gridIndex]),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return null; // Return null for other items in the SliverList
                }
              },
              childCount: 1, // You only want one GridView
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/frmmmmmmm.jpg'),fit: BoxFit.cover

                )),
              ),
            ),
          ),
          ///best selling products
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: const Text('Best Selling Products',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                if (index == 0) {
                  return GridView.builder(
                    shrinkWrap: true,
                    primary: false,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int gridIndex) {
                      return Ref_widget(image: NetworkImage(buyimg[gridIndex]),
                          name: buynames[gridIndex],
                          price:buyprice[gridIndex] ,
                          qty: buyqty[gridIndex],
                          elevatedButton: ElevatedButton(onPressed: (){}, child: const Text('ADD')),
                          click: (){});
                    },
                  );
                } else {
                  return null;
                }
              },
              childCount: 1,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){},
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.green),
                  child: const Center(
                    child: Text('View more', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                ),),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(
                    'assets/images/farmm3.webp'),fit: BoxFit.fill
                )),
              ),
            ),
          ),
          ///blogs
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Our Blog Posts',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: List.generate(
                          3,
                              (index) =>Blog_Wiget(image: NetworkImage(blogimg[index]),
                              title: blogtitle[index],
                              postedon: 'a year ago',
                              icon: Icons.arrow_forward,
                              click: (){})),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(onPressed: (){},
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(right: 250.0),
                            child: Text('View more', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.green,),),
                          ),
                        ),),
                    ),
                  ],
                ),
              ),
              childCount: 1,
            ),
          ),

          ///costumer reviews
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('What Our Costumers Say?',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                CarouselSlider(items: [
                  Container(
                    child: Stack(
                      children: [
                        const Positioned(
                            top: 10,
                            left: 10,
                            child: CircleAvatar(backgroundImage: AssetImage('assets/images/farm7.jpeg'))),
                        const Positioned(
                            top: 15,
                            left: 60,
                            child: Text('Devika')),
                        const Positioned(
                            top: 30,
                            left: 60,
                            child: Text('Flutter developer')),
                        Positioned(
                            top: 70,
                            left: 10,
                            child: Text('''This app is a game-changer! Fresh veggies delivered to your door with just a few taps.
                                           The produce is top-notch, the app is easy to use, and the convenience is unbeatable.
                                           Say goodbye to long grocery lines and hello to healthier meals. Highly recommended!!!!''',
                              style: TextStyle(color: Colors.grey[900],fontSize: 15),)),
                        const Positioned(
                            top: 10,
                            right: 10,
                            child: Icon(Icons.format_quote_outlined,size: 40,color: Colors.grey,))
                      ],
                    ),
                  )
                ], options: CarouselOptions(
                    enableInfiniteScroll: true,
                    viewportFraction: 1,
                    autoPlay: true,
                    height: 200
                )),
              ],

            ),
          ),
          const SliverToBoxAdapter(child: Divider(height: 5,color: Colors.grey,),),
          ///medias
          const SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(height: 10),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('This kochi-based-farm-to-fork\n''marketplace is connecting farmers\n''directly to costumers'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 170.0),
                  child: Row(
                    children: [FaIcon(Icons.facebook, color: Colors.blue,),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: FaIcon(FontAwesomeIcons.instagram,color: Colors.redAccent,),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: FaIcon(FontAwesomeIcons.twitter,color: Colors.blue,),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: FaIcon(Icons.telegram,color: Colors.blue,),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SliverToBoxAdapter(child: Divider(height: 10,color: Colors.grey,)),
          ///credits and about
          SliverToBoxAdapter(
            child:
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Get To Know Us',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  const Text('about us  | our farmers | Blog', style: TextStyle(color: Colors.grey, fontSize: 12),),
                  const SizedBox(height: 20,),
                  const Text('Useful Links',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  const Text('Privacy Policy | Return and Refund Policy |',style: TextStyle(color: Colors.grey, fontSize: 12)),
                  const Text('Terms and Conditions',style: TextStyle(color: Colors.grey, fontSize: 12)),
                  const SizedBox(height: 20,),
                  const Row(
                    children: [
                      SizedBox(width: 120,),
                      Icon(FontAwesomeIcons.twitter, color: Colors.grey,size: 30,),
                      SizedBox(width: 30,),
                      Icon(FontAwesomeIcons.youtube, color: Colors.grey,size: 30,),
                      SizedBox(width: 30,),
                      Icon(Icons.facebook, color: Colors.grey,size: 30,),
                      SizedBox(width: 30,),
                      Icon(FontAwesomeIcons.instagram, color: Colors.grey,size: 30,),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Container(color: Colors.greenAccent[700],
                    height: 100,width: double.infinity,
                    alignment: Alignment.center,
                    child: const Text('copyright details', style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      ///Bottom navigation bar
      bottomNavigationBar: SlidingClippedNavBar(
        backgroundColor: Colors.white,
        onButtonPressed: (index) {
          setState(() {
            selectedIndex = index;
          });
          controller.animateToPage(selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad);
        },
        iconSize: 30,
        activeColor: const Color(0xFF4CAF50),
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            icon: Icons.home,
            title: 'Home',
          ),
          BarItem(
            icon: Icons.shopping_cart,
            title: 'Cart',
          ),
          BarItem(title: 'Account',
              icon: Icons.person
          )

        ],
      ),
    );

  }}