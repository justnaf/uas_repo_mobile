import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:footer/footer.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_page.dart';
import 'register_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'welcome.png',
              width: 300,
            ),
            Text("Aplikasi Tugas UAS Dikerjakan Dengan Santuy Dan Hikmat, dibuat dengan kemampuan otak pribadi", textAlign: TextAlign.center, style: GoogleFonts.poppins(),),
            Container(
              padding: EdgeInsets.only(top: 14, bottom: 1),
              child: 
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text("Login", style:GoogleFonts.raleway(),)),
              
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => RegisterPage()));
              },
              child: Text("Don't Have Account?Register", style: GoogleFonts.raleway(),)),
              Container(
                padding: EdgeInsets.only(top: 200),
                child: 
              Text("Copyright ©2022, Naufal Anis Fauzan"),
                
              )

          ],
        ),
      ),
    );
  }
}
