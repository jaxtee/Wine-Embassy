import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

bool isSelected = false;
IconData icon = Icons.favorite_border_rounded;

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(20),
                  height: _height * .75,
                  width: _width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text('Checkout', 
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Cormorant Upright', 
                          fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: _height * .45,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Stack(children: <Widget>[
                                  Container(
                                    height: 130,
                                    width: 60,
                                  ),
                                  Positioned(
                                    top: 60,
                                    child: Container(
                                      height: 70.0,
                                      width: 60.0,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    left: 0,
                                    child: Container(
                                      height: 120,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/2000chateau lafite.png'),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                ]),
                                Column(
                                  children: <Widget>[
                                    AutoSizeText(
                                      'Chateau Rothchild',
                                      style: TextStyle(
                                          fontFamily: 'Cormorant Upright',
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    AutoSizeText(
                                      '75cl, 100% Cabernet Saufignon',
                                      style: TextStyle(
                                          fontFamily: 'Merriweather',
                                          fontSize: 14,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        IconButton(
                                          icon: Icon(
                                            icon,
                                            color: Colors.red,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              isSelected = !isSelected;
                                              icon = isSelected
                                                  ? Icons.favorite_rounded
                                                  : Icons.favorite_border_rounded;
                                            });
                                          },
                                        ),
                                        IconButton(
                                            icon: Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                            ),
                                            onPressed: () {}),
                                      ],
                                    ),
                                  ],
                                ),
                                AutoSizeText(
                                  '\$72.99',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Merriweather'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          AutoSizeText(
                            'Payment Method',
                            style: TextStyle(
                                fontFamily: 'Merriweather',
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: _height * 0.16,
                            width: _width,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(20.0),
                                  height: _height * 0.15,
                                  width: _width * 0.63,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          AutoSizeText(
                                            'Debit Card',
                                            style: TextStyle(
                                                fontFamily: 'Merriweather',
                                                color: Colors.white),
                                          ),
                                          Spacer(),
                                          Image.asset(
                                            'assets/master.png',
                                            width: 40,
                                            height: 40,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          AutoSizeText(
                                            '****1706',
                                            style: TextStyle(
                                                fontFamily: 'Merriweather',
                                                color: Colors.white),
                                          ),
                                          Spacer(),
                                          AutoSizeText(
                                            '02/246',
                                            style: TextStyle(
                                                fontFamily: 'Merriweather',
                                                color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  padding: const EdgeInsets.all(20.0),
                                  height: _height * 0.15,
                                  width: _width * 0.63,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          AutoSizeText(
                                            'Debit Card',
                                            style: TextStyle(
                                                fontFamily: 'Merriweather',
                                                color: Colors.white),
                                          ),
                                          Spacer(),
                                          Image.asset(
                                            'assets/visa-logo.png',
                                            width: 40,
                                            height: 40,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          AutoSizeText(
                                            '****4370',
                                            style: TextStyle(
                                                fontFamily: 'Merriweather',
                                                color: Colors.white),
                                          ),
                                          Spacer(),
                                          AutoSizeText(
                                            '02/23',
                                            style: TextStyle(
                                                fontFamily: 'Merriweather',
                                                color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  padding: const EdgeInsets.all(20.0),
                                  height: _height * 0.15,
                                  width: _width * 0.63,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          AutoSizeText(
                                            'Debit Card',
                                            style: TextStyle(
                                                fontFamily: 'Merriweather',
                                                color: Colors.white),
                                          ),
                                          Spacer(),
                                          Image.asset(
                                            'assets/verve.png',
                                            width: 40,
                                            height: 40,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          AutoSizeText(
                                            '****0218',
                                            style: TextStyle(
                                                fontFamily: 'Merriweather',
                                                color: Colors.white),
                                          ),
                                          Spacer(),
                                          AutoSizeText(
                                            '04/22',
                                            style: TextStyle(
                                                fontFamily: 'Merriweather',
                                                color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: AutoSizeText(
                            'SUBTOTAL',
                            style: TextStyle(
                              fontFamily: 'Merriweather',
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: AutoSizeText(
                            '\$72.99',
                            style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Merriweather'),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        elevation: 5.0,
                      ), 
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            AutoSizeText(
                              'Confirm',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Merriweather',
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                              size: 14,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
