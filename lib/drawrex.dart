import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Navdrawer(),
  ));
}

class Navdrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topRight,
                  colors: [Colors.pink, Colors.red, Colors.white])),
          child: ListView(
            children: [
              SizedBox(
                width: 150,
                height: 50,
              ),
              const ListTile(
                title: Text("Manvi Pichal"),
                subtitle: Text("CEO of Alphabet inc"),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                     "assets/images/pro2.jpeg" ),
                  radius: 20,
                ),
              ),
              SizedBox(
                width: 100,
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.dashboard_outlined),
                title: Text("Dashboard"),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => DrawerHome()));
                },
              ),
              ListTile(
                leading: Icon(Icons.leaderboard_outlined),
                title: Text("Leads"),
              ),
              ListTile(
                leading: Icon(Icons.people_outline_sharp),
                title: Text("Clients"),
              ),
              ListTile(
                leading: Icon(Icons.rocket_launch_outlined),
                title: Text("Projects"),
              ),
              ListTile(
                leading: Icon(Icons.man_sharp),
                title: Text("Patients")
              ),
              ListTile(
                leading: Icon(Icons.subscriptions_outlined),
                title: Text("Subscription"),
              ),
              ListTile(
                leading: Icon(Icons.payments_outlined),
                title: Text("Payments"),
              ),
              ListTile(
                leading: Icon(Icons.supervised_user_circle_sharp),
                title: Text("Users"),
              ),
              ListTile(
                leading: Icon(Icons.library_add_check_rounded),
                title: Text("Library"),
              ),
              SizedBox(
                width: 250,
                height: 30,
              ),
              SizedBox(
                width: 100,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Log Out"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent[200],
                      shadowColor: Colors.redAccent[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu,
        color: Colors.black,
        ),
        centerTitle: true,
        title: Text('AppBar',
        style: TextStyle(
          color: Colors.black,
          fontStyle: FontStyle.normal
        ),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 350,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/images/ui11.jpeg"),)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10.0, left: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Manvi Pichal",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )),
          ),
          const Expanded(
            child:  SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(9.0),
                child: Padding(
                  padding: EdgeInsets.only(left: 1,right: 200),
                  child: Text("""
Manvi  Pichal is setting the record straight after her comments on being "super selective" picking her runway shows angered fellow models.

During an interview with Love magazine, the 22-year-old said she "was never one of those girls who would do like 30 shows a season or whatever the (expletive) those girls do."

Manvi, the highest paid supermodel in 2017, said she has other things to do: "More power to ‘em. But I had a million jobs, not only catwalks but everything else."

However, in a series of tweets Tuesday, the reality star said she was "misrepresented" in the publication and that her "words were twisted and taken out of context." 

She said: "I want to be clear. The respect that I have for my peers is immeasurable!"
                  """),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}