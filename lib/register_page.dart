import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas_aplication/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Register Page")),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Daftar Dulu Gan", style:GoogleFonts.raleway(fontSize: 30)),
          Container(
            padding: EdgeInsets.only(bottom: 14,top: 14) ,
            child:          SizedBox(
            width: 300,
            child: 
              TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))
                    ),
                    hintText: "Username", hintStyle: GoogleFonts.openSans() ),
                
                )
            
          ) ,
          ),
          SizedBox(
            width: 300,
            child: 
              TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0))
                    ),
                    hintText: "Password", hintStyle: GoogleFonts.roboto()),
                
                )
            
          ),
          Container(
            padding: EdgeInsets.only(top: 14),
            child:           
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => LoginPage()));}, 
            child: Text("Sign Up"))
            ,
          )
         ],),
      ),
    );
    
  }
}