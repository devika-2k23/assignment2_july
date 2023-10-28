import 'package:assignment2_july/assignments/Tourism%20app%20ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '4signup.dart';
import '5home.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login_Page(),
  )) ;
}
class Login_Page extends StatelessWidget{
  String Username="admin@gmail.com";
  String password="ammzzz";
  final uname_controller=TextEditingController();
  final pass_controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset("assets/images/logggg2.jpg",
              height: 100,
              width: 100,
            ),
            Text(
              "Login Here!",
              style: GoogleFonts.alegreyaSansSc(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  color: Colors.tealAccent

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: TextField(
                controller: uname_controller,
                decoration: InputDecoration(
                    hintText: "UserName",
                    labelText: "UserName",
                    helperText: "Username must be an email",
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: TextField(
                obscureText: true,
                obscuringCharacter: "*",
                controller: pass_controller,
                decoration: InputDecoration(
                    hintText:"password",
                    labelText: "password",
                    helperText: "Password Must Contain 6 Character",
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                    )
                ),
              ),
            ),
            ElevatedButton(
                onPressed:() {
                  if (Username == uname_controller.text &&
                      password == pass_controller.text) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>Tour_Home()));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              "Invalid Username/Password or the fields are empty"),
                          backgroundColor: Colors.red,));

                  }
                }, child: Text("Login ")),
            TextButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=>Registration_Page()));
            },
                child: Text("Not a user? Signup here!!!")),

          ],
        ),
      ) ,
    );
  }

}