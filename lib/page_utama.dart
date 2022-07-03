import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'detail_page.dart';

class PageUtama extends StatefulWidget {
  const PageUtama({Key? key}) : super(key: key);

  @override
  State<PageUtama> createState() => _PageUtamaState();
}

class _PageUtamaState extends State<PageUtama> {
  @override
  List _get = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  Future _getData() async {
    try {
      final response = await http.get(Uri.parse(
          "https://dummyjson.com/users"));
      // return jsonDecode(response.body);

      // untuk cek data
      if (response.statusCode == 200) {
        //print(response.body);
        final data = jsonDecode(response.body);
        setState(() {
          _get = data['users'];

        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Kartu"),
      ),
            body: ListView.builder(
          itemCount: _get.length,
          itemBuilder:(context, index){
            return ListTile(
              leading: Container(
                //color: Colors.grey[200],
                padding: EdgeInsets.all(3),
                height: 100,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child:
                Image.network(
                  '${_get[index]['image']}',
                  width: 100,
                  fit: BoxFit.cover,
                ),
                )
              ),
              title: Text(
                '${_get[index]['firstName']}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => DetailPage(
                      firstName: _get[index]['firstName'],
                      lastName: _get[index]['lastName'],
                      maidenName: _get[index]['maidenName'],
                      age: _get[index]['age'],
                      gender: _get[index]['gender'],
                      email: _get[index]['email'],
                      phone:_get[index]['phone'],
                      image:_get[index]['image'],

                    ),
                  ),
                );
              },
            );
          }
      )
    );
}
}