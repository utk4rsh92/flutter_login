import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class Posts {
  int userId;
  int id;
  String title;
  String body;

  Posts({this.userId, this.id, this.title, this.body});
  factory Posts.fromJson(Map<String, dynamic> json) {
    return Posts(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body']);
  }
}
/*Future<Posts> fetchPosts() async{
  var response = http.get(url)
  if (response.statusCode == 200) {
    return Posts.fromJson(jsonDecode(response.body));
  }
  else{

  }
}*/

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        title: Text(
          'Home',
          textAlign: TextAlign.left,
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Theme.of(context).primaryColor,
              child: Center(

                child: Column(
                  children: <Widget>[

                    Container(
                      width: 100,
                      height: 100,
                      //color: Colors.blue,
                      margin: EdgeInsets.only(
                        top: 30,
                        bottom: 10
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                        image: DecorationImage(image: AssetImage('assets/profile.png'),fit: BoxFit.fill),
                      ),
                    ),
                    Text('Utkarsh Guleri',
                    style: GoogleFonts.alef(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 17.0
                    ),
                    ),
                    Text(
                      'utkarsh.guleri92@gmail.com',
                      style: GoogleFonts.alef(
                        color: Colors.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard',style: GoogleFonts.alef(
                color: Colors.black,
                fontSize: 15.0
              ),),

            )
          ],
        ),
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.all(8),
        width: 500,
        height: 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, blurRadius: 15, offset: Offset(2.0, 5.0))
          ],
          gradient:
              LinearGradient(colors: [Colors.green[700], Colors.green[900]]),
        ),
        child: Column(
          children: <Widget>[
            Text(
              'Welcome',
              textAlign: TextAlign.center,
              style: GoogleFonts.yrsa(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            new Image(
              image: AssetImage(
                'assets/profile.png',
              ),
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'ID = 90302',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(color: Colors.white, fontSize: 18.0),
            ),
            SizedBox(
              height: 60,
            ),
            new OutlineButton(
              shape: StadiumBorder(),
              textColor: Colors.blue,
              child: Text(
                'Logout',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
              borderSide: BorderSide(
                  color: Colors.white, style: BorderStyle.solid, width: 1),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
