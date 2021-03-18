import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'Home.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:http/http.dart' as http;

class kartFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _stTitle = 'www.pnb.com';
    String _user = '';
    String _pass = '';
    TextEditingController userCont = new TextEditingController();
    TextEditingController passCont = new TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _stTitle,
      home: SingleChildScrollView(

          child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(8),
            width: 500,
            height: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15,
                    offset: Offset(2.0, 5.0),),
              ],
              gradient:
                  LinearGradient(colors: [Colors.red[300], Colors.red[400]]),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 0,
                ),
                new Image(image: AssetImage('assets/depoto.png'),width: 200,height: 90,),
                /*new Image.network(
                  "https://toppng.com/uploads/preview/fortnite-logo-vector-download-logo-fortnite-11562849065qqdpx1wor1.png",
                  width: 900,
                  height: 50,
                ),*/
                Text(
                  'Sign In',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.yrsa(
                      fontSize: 25.0,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  /*     style: TextStyle(
                      fontSize: 25.0,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),*/
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextField(
                    cursorColor: Colors.white,
                    controller: userCont,
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.white),
                      ),
                      hintText: 'Username',
                      labelText: 'Name',
                    ),
                  ),
                ),
                /*  SizedBox(
                  height: 1.0,
                ),*/
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextField(
                    cursorColor: Colors.white,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.white),
                      ),
                      hintText: 'Password',
                      labelText: 'Password',
                    ),
                    controller: passCont,
                  ),
                ),
                new OutlineButton(
                  shape: StadiumBorder(),
                  textColor: Colors.blue,
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                  borderSide: BorderSide(
                      color: Colors.white, style: BorderStyle.solid, width: 1),
                  onPressed: () {
                    _user = userCont.text;
                    _pass = passCont.text;
                    if (_user.isEmpty || _pass.isEmpty) {
                      Toast.show("please provide valid input", context,
                          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);

                      // print('Cannt be Empty');
                    } else {
                      print(userCont.text);
                      print(passCont.text);
                      userCont.clear();
                      passCont.clear();
                      Toast.show(_user + ":::" + _pass, context,
                          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home()));
                    }
                  },
                ),
              ],
            ),
          ),
          Text(
            'Copyrights@2021',
            textAlign: TextAlign.end,
            style: GoogleFonts.yrsa(
                fontSize: 15.0,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ],
      )),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Home',
          style: GoogleFonts.lato(
            color: Colors.red,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(

          children: <Widget>[

            Text(
              'Welcome',
              textAlign: TextAlign.center,
              style: GoogleFonts.yrsa(
                  color: Colors.green,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            Text('ID = 90302',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: Colors.black,
              fontSize: 18.0
            ),),
            new OutlineButton(
              shape: StadiumBorder(),
              textColor: Colors.blue,
              child: Text(
                'Logout',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
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
