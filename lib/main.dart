import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'kartFlow.dart';
void main() {

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      title: 'EShoppe',
      theme: ThemeData(
         primaryColor: Colors.white,
        primaryColorDark: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Demo',
          style: GoogleFonts.aclonica(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
            color: Colors.white,
          ),
          ),
          backgroundColor: Colors.black,
        ),
        body: kartFlow(),
      )

    );
  }


}
