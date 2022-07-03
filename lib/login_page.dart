import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'page_utama.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Login Page")),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Login Dulu Gan", style: GoogleFonts.raleway(fontSize:30)),
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
                    hintText: "Username",hintStyle: GoogleFonts.roboto() ),
                
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
                    hintText: "Password", hintStyle: GoogleFonts.roboto() ),
                
                )
            
          ),
          Container(
            padding: EdgeInsets.only(top: 14),
            child:           
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => PageUtama()));}, 
            child: Text("Login"))
            ,
          )
         ],),
      ),
    );
  }
}
