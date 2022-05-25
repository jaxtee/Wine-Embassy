import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class WineDescription extends StatefulWidget {
  final wColor;
  final wName;
  final wVol;
  final wBrand;
  final wVintage;
  final wSpec;
  final wOrigin;
  final wPic;
  final wPrice;

  WineDescription({
    this.wColor,
    this.wName,
    this.wVol,
    this.wBrand,
    this.wVintage,
    this.wSpec,
    this.wOrigin,
    this.wPic,
    this.wPrice,
});

  @override
  _WineDescriptionState createState() => _WineDescriptionState();
}

class _WineDescriptionState extends State<WineDescription> {
  int _counter = 1;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: _height * .7,
                    width: _width,
                    color: Colors.white,
                  ),
                  Container(
                    width: _width * .9,
                    height: _height * .6,
                    decoration: BoxDecoration(
                      color:widget.wColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 45.0, left: 15.0),
                            child: AutoSizeText(widget.wName,
                              style: TextStyle(
                                  fontFamily: 'Cormorant Upright', fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                            child: AutoSizeText(widget.wVol,
                              style: TextStyle(
                                  fontFamily: 'Merriweather', fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 20.0,
                      left: 10.0,
                      child: IconButton(
                          icon: Icon(Icons.arrow_back_ios_rounded),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                      ),
                  ),
                  Positioned(
                    top: 20.0,
                    right: 10.0,
                    child: Stack(
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
                              child: Text('2', style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 170.0,
                      left: 30.0,
                      height: 80.0,
                      width: 80.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 10.0),
                              child: AutoSizeText(widget.wBrand,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black, fontFamily: 'Merriweather',
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                        AutoSizeText("Type",
                          style: TextStyle(
                            color: Colors.grey.shade800, fontSize: 16, fontFamily: 'Merriweather'
                          ),
                        ),
                          ],
                        ),
                      ),
                  ),
                  Positioned(
                    top: 280.0,
                    left: 30.0,
                    height: 80.0,
                    width: 80.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 10.0),
                            child: AutoSizeText(widget.wVintage,
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black, fontFamily: 'Merriweather',
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          AutoSizeText("Vintage",
                            style: TextStyle(
                                color: Colors.grey.shade800, fontSize: 16, fontFamily: 'Merriweather'
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 390.0,
                    left: 30.0,
                    height: 80.0,
                    width: 80.0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.black
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0, 18.0, 10.0, 10.0),
                            child: AutoSizeText(widget.wOrigin,
                              style: TextStyle(
                                fontSize: 16, color: Colors.white, fontFamily: 'Merriweather',
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          AutoSizeText("Country",
                            style: TextStyle(
                                color: Colors.white70, fontSize: 16, fontFamily: 'Merriweather'
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 170.0,
                      left: 140.0,
                      height: 230,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: AutoSizeText(widget.wName,
                          style: TextStyle(
                            fontFamily: 'DancingScript', fontSize: 28, color: Colors.black45
                          ),
                        ),
                      ),
                  ),
                  Positioned(
                    top: 170.0,
                    right: 20.0,
                    height: 300.0,
                    width: 180.0,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.wPic),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              AutoSizeText('Specification',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'Merriweather'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: AutoSizeText(widget.wSpec,
                  style: TextStyle(color: Colors.black, fontFamily: 'Merriweather'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Container(
                        width: 140.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          color: Colors.grey.shade400
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () => setState(() => _counter--)),
                            Container(
                              width: 32.0,
                              height: 32.0,
                              child: Center(
                                child: AutoSizeText(
                                  _counter.toString(),
                                  style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16, fontFamily: 'Merriweather',
                                        color: Colors.white),
                                ),
                              ),
                            ),
                            IconButton(
                                icon: Icon(Icons.add),
                                color: Colors.white,
                                onPressed: () => setState(() => _counter++)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red.shade900,
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            AutoSizeText('Add to Cart',
                              style: TextStyle(color: Colors.white, fontFamily: 'Merriweather'),
                            ),
                            AutoSizeText('\$72.99',
                              style: TextStyle(color: Colors.white, fontFamily: 'Merriweather'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
                ),
              )
            ],
            ),
          ),
        ),
      ),
    );
  }
}
