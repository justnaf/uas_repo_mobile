import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  final String firstName, lastName, maidenName, email, phone, gender, image;
  final int age;
  const DetailPage({Key? key, required this.firstName, required this.lastName, required this.maidenName, required this.age, required this.gender, required this.email, required this.phone, required this.image}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Kartu ""${widget.firstName}") ,),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 13),
              child:   
            Card(
              child: SizedBox(
                width: 200,
                height: 300,
                child: Center(
                  child: 
                  Container(
                    padding: EdgeInsets.all(4),
                    child: Image.network("${widget.image}"),
                    )
                  ,
                )
                ,
              ),
            ),
            ),
            Text("Info Card",style: GoogleFonts.playfairDisplay(fontSize: 30)),
            Text("Nama   : ""${widget.firstName}" " ${widget.maidenName}" " ${widget.lastName}", style: GoogleFonts.montserrat(fontSize: 13)),
            Text("Umur   : ""${widget.age}", style: GoogleFonts.montserrat(fontSize: 13)),
            Text("Gender : ""${widget.gender}", style: GoogleFonts.montserrat(fontSize: 13)),
            Text("Email  : ""${widget.email}", style: GoogleFonts.montserrat(fontSize: 13)),
            Text("Phone  : ""${widget.phone}", style: GoogleFonts.montserrat(fontSize: 13)),
          ],
        )),  
    );
  }
}
