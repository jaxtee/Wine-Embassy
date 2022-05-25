import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:wine/buttons/wine_button.dart';
import 'package:wine/wine_description.dart';
import 'package:wine/wine_lists/champagne_list.dart';
import 'package:wine/wine_lists/dessert_list.dart';
import 'package:wine/wine_lists/red_list.dart';
import 'package:wine/wine_lists/rose_list.dart';
import 'package:wine/wine_lists/whisky_list.dart';
import 'package:wine/wine_lists/white_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var text1 = 'Red';
  var text2 = 'White';
  var text3 = 'Rose';
  var text4 = 'Champagne';
  var text5 = 'Whisky';
  var text6 = 'Dessert';

  var color1 = Colors.red.shade900;
  var color2 = Colors.lime.shade900;
  var color3 = Colors.pink.shade300;
  var color4 = Colors.amberAccent.shade400;
  var color5 = Colors.brown.shade400;
  var color6 = Colors.purple.shade600;

  List<Widget> itemsData = [];

  getRedData() {
    List<dynamic> responseList = RedData;
    List<Widget> listItems = [];
    responseList.forEach((data) {
      listItems.add(
          GestureDetector(
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => WineDescription(
                  wColor: color1,
                  wBrand: data['brand'],
                  wVol: data['vol'],
                  wName: data['title'],
                  wOrigin: data['country'],
                  wPic: data['image'],
                  wSpec: data['spec'],
                  wVintage: data['year'],
                  wPrice: data['price'],
                ))),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 45,
                  left: 10,
                  height: 120,
                  width: 140,
                  child: Container(
                    decoration: BoxDecoration(
                      color: color1,
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red.shade300,
                          offset: Offset(0, 5),
                          blurRadius: 10,
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(60.0, 20.0, 0.0, 0.0),
                      child: AutoSizeText.rich(
                        TextSpan(text: data['name'] + '\n',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800, color: Colors.white
                          ),
                          children: <TextSpan>[
                            TextSpan(text: data['brand'] + '\n',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white54
                              ),
                            ),
                            TextSpan(text: '\$' + '${data['price'].toStringAsFixed(2)}',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 5.0,
                  left: 10.0,
                  width: 60.0,
                  height: 140.0,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(data['image']),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
      );
    });
    setState(() {
      itemsData = listItems;
    });
  }
  getWhiteData() {
    List<dynamic> responseList = WhiteData;
    List<Widget> listItems = [];
    responseList.forEach((data) {
      listItems.add(
        GestureDetector(
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => WineDescription(
                wColor: color2,
                wBrand: data['brand'],
                wVol: data['vol'],
                wName: data['title'],
                wOrigin: data['country'],
                wPic: data['image'],
                wSpec: data['spec'],
                wVintage: data['year'],
                wPrice: data['price'],
              ))),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 45,
                left: 10,
                height: 120,
                width: 140,
                child: Container(
                  decoration: BoxDecoration(
                    color: color2,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lime.shade300,
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(60.0, 20.0, 0.0, 0.0),
                    child: AutoSizeText.rich(
                      TextSpan(text: data['name'] + '\n',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800, color: Colors.white
                        ),
                        children: <TextSpan>[
                          TextSpan(text: data['brand'] + '\n',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white54
                            ),
                          ),
                          TextSpan(text: '\$' + '${data['price'].toStringAsFixed(2)}',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5.0,
                left: 10.0,
                width: 60.0,
                height: 140.0,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(data['image']),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
    setState(() {
      itemsData = listItems;
    });
  }
  getRoseData() {
    List<dynamic> responseList = RoseData;
    List<Widget> listItems = [];
    responseList.forEach((data) {
      listItems.add(
        GestureDetector(
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => WineDescription(
                wColor: color3,
                wBrand: data['brand'],
                wVol: data['vol'],
                wName: data['title'],
                wOrigin: data['country'],
                wPic: data['image'],
                wSpec: data['spec'],
                wVintage: data['year'],
                wPrice: data['price'],
              ))),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 45,
                left: 10,
                height: 120,
                width: 140,
                child: Container(
                  decoration: BoxDecoration(
                    color: color3,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.shade100,
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(60.0, 20.0, 0.0, 0.0),
                    child: AutoSizeText.rich(
                      TextSpan(text: data['name'] + '\n',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800, color: Colors.white
                        ),
                        children: <TextSpan>[
                          TextSpan(text: data['brand'] + '\n',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white54
                            ),
                          ),
                          TextSpan(text: '\$' + '${data['price'].toStringAsFixed(2)}',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5.0,
                left: 10.0,
                width: 60.0,
                height: 140.0,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(data['image']),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
    setState(() {
      itemsData = listItems;
    });
  }
  getChampagneData() {
    List<dynamic> responseList = ChampagneData;
    List<Widget> listItems = [];
    responseList.forEach((data) {
      listItems.add(
        GestureDetector(
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => WineDescription(
                wColor: color4,
                wBrand: data['brand'],
                wVol: data['vol'],
                wName: data['title'],
                wOrigin: data['country'],
                wPic: data['image'],
                wSpec: data['spec'],
                wVintage: data['year'],
                wPrice: data['price'],
              ))),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 45,
                left: 10,
                height: 120,
                width: 140,
                child: Container(
                  decoration: BoxDecoration(
                    color: color4,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.amberAccent.shade100,
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(60.0, 20.0, 0.0, 0.0),
                    child: AutoSizeText.rich(
                      TextSpan(text: data['name'] + '\n',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800, color: Colors.white
                        ),
                        children: <TextSpan>[
                          TextSpan(text: data['brand'] + '\n',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white54
                            ),
                          ),
                          TextSpan(text: '\$' + '${data['price'].toStringAsFixed(2)}',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5.0,
                left: 10.0,
                width: 60.0,
                height: 140.0,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(data['image']),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
    setState(() {
      itemsData = listItems;
    });
  }
  getWhiskyData() {
    List<dynamic> responseList = WhiskyData;
    List<Widget> listItems = [];
    responseList.forEach((data) {
      listItems.add(
        GestureDetector(
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => WineDescription(
                wColor: color5,
                wBrand: data['brand'],
                wVol: data['vol'],
                wName: data['title'],
                wOrigin: data['country'],
                wPic: data['image'],
                wSpec: data['spec'],
                wVintage: data['year'],
                wPrice: data['price'],
              ))),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 45,
                left: 10,
                height: 120,
                width: 140,
                child: Container(
                  decoration: BoxDecoration(
                    color: color5,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.brown.shade200,
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(60.0, 20.0, 0.0, 0.0),
                    child: AutoSizeText.rich(
                      TextSpan(text: data['name'] + '\n',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800, color: Colors.white
                        ),
                        children: <TextSpan>[
                          TextSpan(text: data['brand'] + '\n',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white54
                            ),
                          ),
                          TextSpan(text: '\$' + '${data['price'].toStringAsFixed(2)}',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5.0,
                left: 10.0,
                width: 60.0,
                height: 140.0,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(data['image']),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
    setState(() {
      itemsData = listItems;
    });
  }
  getDessertData() {
    List<dynamic> responseList = DessertData;
    List<Widget> listItems = [];
    responseList.forEach((data) {
      listItems.add(
        GestureDetector(
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => WineDescription(
                wColor: color6,
                wBrand: data['brand'],
                wVol: data['vol'],
                wName: data['title'],
                wOrigin: data['country'],
                wPic: data['image'],
                wSpec: data['spec'],
                wVintage: data['year'],
                wPrice: data['price'],
              ))),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 45,
                left: 10,
                height: 120,
                width: 140,
                child: Container(
                  decoration: BoxDecoration(
                    color: color6,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.shade300,
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        spreadRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(60.0, 20.0, 0.0, 0.0),
                    child: AutoSizeText.rich(
                      TextSpan(text: data['name'] + '\n',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800, color: Colors.white
                        ),
                        children: <TextSpan>[
                          TextSpan(text: data['brand'] + '\n',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white54
                            ),
                          ),
                          TextSpan(text: '\$' + '${data['price'].toStringAsFixed(2)}',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5.0,
                left: 10.0,
                width: 60.0,
                height: 140.0,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(data['image']),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getRedData();
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            //Profile Picture & Shopping Cart
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 80.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.grey.shade400,
                              offset: Offset(0, 5),
                              blurRadius: 10,
                              spreadRadius: 0.5
                          ),
                        ]
                    ),
                    child: Center(
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.white,
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/air.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(Icons.shopping_cart_rounded, size: 37, color: Colors.black),
                    ),
                    Positioned(
                      top: 12.0,
                      right: 10.0,
                      width: 17.0,
                      height: 17.0,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red
                        ),
                        child: Center(
                          child: Text('2', style: TextStyle(color: Colors.white, fontFamily: 'Merriweather'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 5.0, bottom: 8.0),
              child: AutoSizeText.rich(
                TextSpan(text: "Hello ",
                  style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Jackson',
                      style: TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    )
                  ]
                ),
                ),
            ),

          //  Wine Selection Tabs
            Container(
              height: 80.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => getRedData(),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: WineButton(
                        color: color1,
                        text: text1,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => getWhiteData(),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: WineButton(
                        color: color2,
                        text: text2,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => getRoseData(),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: WineButton(
                        color: color3,
                        text: text3,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => getChampagneData(),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: WineButton(
                        color: color4,
                        text: text4,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => getWhiskyData(),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: WineButton(
                        color: color5,
                        text: text5,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => getDessertData(),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: WineButton(
                        color: color6,
                        text: text6,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: AutoSizeText('Our Best Collection',
                style: TextStyle(
                  fontWeight: FontWeight.w900, fontSize: 22, fontFamily: 'Merriweather'
                ),
              ),
            ),

          //  Best Collection
            Container(
              height: 180.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 5.0),
                    child: Container(
                      child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 160,
                                width: _width * 0.8,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                  borderRadius: BorderRadius.circular(30.0)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Container(
                                      color: Colors.transparent,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(12.0, 25.0, 20, 0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Container(
                                                    height: 15,
                                                    width: 45,
                                                    color: Colors.red,
                                                    child: Center(
                                                      child: AutoSizeText('Limited',
                                                        style: TextStyle(fontFamily: 'Merriweather', fontSize: 13, color: Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                  AutoSizeText(' only 15 bottles',
                                                      style: TextStyle(fontFamily: 'Merriweather', fontSize: 13, color: Colors.white),
                                                    ),
                                                ],
                                              ),
                                              AutoSizeText('Mulberry &\nBlack Currant',
                                                style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'Merriweather'),
                                              ),
                                              AutoSizeText('Bordeaux blend',
                                                style: TextStyle(fontSize: 14, color: Colors.white, fontFamily: 'Merriweather'),
                                              ),
                                            ],
                                          ),
                                        ),
                                    ),
                                    Container(
                                      height: 140,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        image: DecorationImage(
                                          image: AssetImage('assets/2000chateau lafite.png'),
                                          fit: BoxFit.cover
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 10,
                                width: _width * 0.72,
                                decoration:  BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black26,
                                          offset: Offset(0, 1),
                                          blurRadius: 10,
                                          spreadRadius: 0.5
                                      )
                                    ]
                                ),
                              ),
                            ],
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 160,
                            width: _width * 0.8,
                            decoration: BoxDecoration(
                                color: Colors.brown.shade900,
                              borderRadius: BorderRadius.circular(30.0)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  color: Colors.transparent,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(12.0, 25.0, 20, 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              height: 15,
                                              width: 40,
                                              color: Colors.red,
                                              child: Center(
                                                child: AutoSizeText('Limited',
                                                  style: TextStyle(fontFamily: 'Merriweather', fontSize: 13, color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            AutoSizeText(' only 15 bottles',
                                              style: TextStyle(fontFamily: 'Merriweather', fontSize: 13, color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        AutoSizeText('Sauvignon Blanc &\nSemillon Grapes',
                                          style: TextStyle(fontFamily: 'Merriweather', fontSize: 20, color: Colors.white),
                                        ),
                                        AutoSizeText('70 years',
                                          style: TextStyle(fontFamily: 'Merriweather', fontSize: 14, color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 140,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    image: DecorationImage(
                                        image: AssetImage('assets/chateau d yquem.PNG'),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 10,
                            width: _width * 0.72,
                            decoration:  BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.brown.shade400,
                                      offset: Offset(0, 1),
                                      blurRadius: 10,
                                      spreadRadius: 0.5
                                  )
                                ]
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 160,
                            width: _width * 0.8,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey.shade900,
                              borderRadius: BorderRadius.circular(30.0)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  color: Colors.transparent,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(12.0, 25.0, 20, 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              height: 15,
                                              width: 40,
                                              color: Colors.red,
                                              child: Center(
                                                child: AutoSizeText('Limited',
                                                  style: TextStyle(fontFamily: 'Merriweather', fontSize: 13, color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            AutoSizeText(' only 15 bottles',
                                              style: TextStyle(fontFamily: 'Merriweather', fontSize: 13, color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        AutoSizeText('Sweet &\nTasty',
                                          style: TextStyle(fontFamily: 'Merriweather', fontSize: 20, color: Colors.white),
                                        ),
                                        AutoSizeText('Made in France',
                                          style: TextStyle(fontFamily: 'Merriweather', fontSize: 14, color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 140,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    image: DecorationImage(
                                        image: AssetImage('assets/whispering angel.png'),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 10,
                            width: _width * 0.72,
                            decoration:  BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.blueGrey.shade400,
                                      offset: Offset(0, 1),
                                      blurRadius: 10,
                                      spreadRadius: 0.5
                                  )
                                ]
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 160,
                            width: _width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.cyan.shade800,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  color: Colors.transparent,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(12.0, 25.0, 20, 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              height: 15,
                                              width: 40,
                                              color: Colors.red,
                                              child: Center(
                                                child: AutoSizeText('Limited',
                                                  style: TextStyle(fontFamily: 'Merriweather', fontSize: 13, color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            AutoSizeText(' only 15 bottles',
                                              style: TextStyle(fontFamily: 'Merriweather', fontSize: 13, color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        AutoSizeText('Freshness &\nElegance',
                                          style: TextStyle(fontFamily: 'Merriweather', fontSize: 20, color: Colors.white),
                                        ),
                                        AutoSizeText('Since 1869',
                                          style: TextStyle(fontFamily: 'Merriweather', fontSize: 14, color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 140,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    image: DecorationImage(
                                        image: AssetImage('assets/moet_imperial_brut.PNG'),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 10,
                            width: _width * 0.72,
                            decoration:  BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.cyan.shade300,
                                      offset: Offset(0, 1),
                                      blurRadius: 10,
                                      spreadRadius: 0.5
                                  )
                                ]
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 160,
                            width: _width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.lime.shade900,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  color: Colors.transparent,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(12.0, 25.0, 20, 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              height: 15,
                                              width: 40,
                                              color: Colors.red,
                                              child: Center(
                                                child: AutoSizeText('Limited',
                                                  style: TextStyle(fontFamily: 'Merriweather', fontSize: 13, color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            AutoSizeText(' only 15 bottles',
                                              style: TextStyle(fontFamily: 'Merriweather', fontSize: 13, color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        AutoSizeText('Malty, Fruity\nSweetness',
                                          style: TextStyle(fontFamily: 'Merriweather', fontSize: 20, color: Colors.white),
                                        ),
                                        AutoSizeText('For the experts',
                                          style: TextStyle(fontFamily: 'Merriweather', fontSize: 14, color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 140,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    image: DecorationImage(
                                        image: AssetImage('assets/lagavulin16.PNG'),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 10,
                            width: _width * 0.72,
                            decoration:  BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.lime.shade400,
                                      offset: Offset(0, 1),
                                      blurRadius: 10,
                                      spreadRadius: 0.5
                                  )
                                ]
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 160,
                            width: _width * 0.8,
                            decoration: BoxDecoration(
                                color: Colors.purple.shade900,
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  color: Colors.transparent,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(12.0, 25.0, 20, 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              height: 15,
                                              width: 40,
                                              color: Colors.red,
                                              child: Center(
                                                child: AutoSizeText('Limited',
                                                  style: TextStyle(fontFamily: 'Merriweather', fontSize: 13, color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            AutoSizeText(' only 15 bottles',
                                              style: TextStyle(fontFamily: 'Merriweather', fontSize: 13, color: Colors.white),
                                            ),
                                          ],
                                        ),
                                        AutoSizeText('Freshness &\nFlavour',
                                          style: TextStyle(fontFamily: 'Merriweather', fontSize: 20, color: Colors.white),
                                        ),
                                        AutoSizeText('Bergerac wine region',
                                          style: TextStyle(fontFamily: 'Merriweather', fontSize: 14, color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 140,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    image: DecorationImage(
                                        image: AssetImage('assets/monbazillac.png'),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 10,
                            width: _width * 0.72,
                            decoration:  BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.purple.shade400,
                                      offset: Offset(0, 1),
                                      blurRadius: 10,
                                      spreadRadius: 0.5
                                  )
                                ]
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

          //  Wine List
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
              child: AutoSizeText('Wine List',
                style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black38, fontFamily: 'Merriweather'
                ),
              ),
            ),
            GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: itemsData.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return itemsData[index];
                }
            )
          ],
        ),
      ),
    );
  }
}
