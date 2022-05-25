import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:wine/checkout.dart';
import 'package:wine/home.dart';
import 'package:wine/nav_page.dart';
import 'package:wine/profile.dart';

void main() {
  runApp(WineEmbassy());
}

class WineEmbassy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'start',

      routes: {
        'start' : (context) => StartPage(),
        'home' : (context) => HomePage(),
        'cart' : (context) => Cart(),
        'profile' : (context) => MyProfile(),
      },
      // home: StartPage(),
    );
  }
}


class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: _height * .8,
                  width: _width,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: AutoSizeText(
                          "WINE \nEMBASSY",
                          style: TextStyle(
                            fontFamily: 'Merriweather', fontSize: 24.0, fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        height: _height * .75,
                        width: _width * .63,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/new_logo.jpg'),
                            fit: BoxFit.contain
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => NavPage())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(
                        color: Colors.yellow.shade700
                      ),
                    ),
                    elevation: 5.0,
                  ),
                  child: Container(
                    width: _width * .65,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12.0, 8.0, 8.0, 8.0),
                          child: AutoSizeText('Explore Our Collection',
                            style: TextStyle(
                              color: Colors. white, fontWeight: FontWeight.w700,
                              fontSize: 15.0, fontFamily: 'Merriweather'
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.arrow_forward_rounded,
                            color: Colors.red.shade900,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
