import 'package:auto_size_text/auto_size_text.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wine/buttons/profile_button.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  var iconA = Icons.portrait;
  var iconB = Icons.portrait;
  var iconC = Icons.group_add_rounded;
  var iconD = Icons.payments_rounded;
  var iconE = Icons.settings;
  var iconF = Icons.exit_to_app;

  File _image;
  final _picker = ImagePicker();

  _imgFromCamera() async {
    PickedFile image = await _picker.getImage(source: ImageSource.camera, imageQuality: 90);

    setState(() {
      _image = File(image.path);
    });
  }

  _imgFromGallery() async {
    PickedFile image = await _picker.getImage(source: ImageSource.gallery, imageQuality: 90);

    setState(() {
      _image = File(image.path);
    });
  }

  void _showPicker (context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(20.0)
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: Container(
              child: Wrap(
                children: <Widget>[
                  ListTile(
                      leading: Icon(Icons.photo_library_rounded),
                      title: AutoSizeText('Photo Library',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }
                  ),
                  ListTile(
                      leading: Icon(Icons.photo_camera),
                      title: Text('Camera',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        _imgFromCamera();
                        Navigator.of(context).pop();
                      }
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: Colors.black, width: 10.0, style: BorderStyle.solid),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: ListView(
          children: <Widget>[Column(
            children: <Widget>[
              Container(
                height: _height * .3,
                width: _width * .93,
                color: Colors.transparent,
                child: Center(
                  child: GestureDetector(
                    onTap: () => _showPicker(context),
                    child: CircleAvatar(
                        radius: 120,
                        backgroundColor: Colors.black,
                        child: _image != null
                            ? ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.file(
                            _image,
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        )
                            : Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          width: 200,
                          height: 200,
                          child: Icon(
                            Icons.camera_alt_rounded, color: Colors.white,size: 57,
                          ),
                        )
                    ),
                  ),
                ),
              ),
              ClipPath(
                clipper: ContainerClipper(),
                child: Container(
                  height: _height * .548,
                  width: _width * .98,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border(
                      top: BorderSide(
                        width: 8.0,
                        style: BorderStyle.solid,
                        color: Colors.black,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0
                      ),
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0
                      )
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: AutoSizeText('Jackson Anana',
                          style: TextStyle(color: Colors.white,fontFamily: 'Merriweather', fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: _firstRow(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: _secondRow(),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
      ]
        ),
      ),
    );
  }

  Row _secondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            GestureDetector(
              onTap: () => _bonus(context),
              child: ProfileButtons(icon: iconD),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0,  0.0),
              child: AutoSizeText('Bonus',
                style: TextStyle(color: Colors.white, fontFamily: 'Merriweather',fontWeight: FontWeight.bold)
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: ProfileButtons(icon: iconE),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0,  0.0),
              child: AutoSizeText('Settings',
                style: TextStyle(color: Colors.white,fontFamily: 'Merriweather', fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: ProfileButtons(icon: iconF),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0,  0.0),
              child: AutoSizeText('Sign Out',
                style: TextStyle(color: Colors.white,fontFamily: 'Merriweather', fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row _firstRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: ProfileButtons(icon: iconA),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0,  0.0),
              child: AutoSizeText('Personal\nDetails',
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontFamily: 'Merriweather'),
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: ProfileButtons(icon: iconB),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0,  0.0),
              child: AutoSizeText('Personal\nDetails',
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontFamily: 'Merriweather'),
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            GestureDetector(
              onTap: () => _referralCode(context),
              child: ProfileButtons(icon: iconC),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0,  0.0),
              child: AutoSizeText('Referral\nCode',
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontFamily: 'Merriweather'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _bonus (context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(30.0)
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: Container(
              child: Wrap(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: AutoSizeText('Your Bonus',
                      style: TextStyle(fontFamily: 'Merriweather',fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: <Widget>[
                        AutoSizeText('Available Bonus:',
                          style: TextStyle(fontSize: 18, fontFamily: 'Merriweather'),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: AutoSizeText('₦0.00',
                            style: TextStyle(fontSize: 18, fontFamily: 'Merriweather'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 10.0, bottom: 10.0),
                    child: Row(
                      children: <Widget>[
                        AutoSizeText('Used Bonus:',
                          style: TextStyle(fontSize: 18, fontFamily: ''),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
                          child: AutoSizeText('₦0.00',
                            style: TextStyle(fontSize: 18, fontFamily: 'Merriweather'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  void _referralCode (context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(30.0)
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
            child: Container(
              child: Wrap(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: AutoSizeText('Referral Code',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontFamily: 'Merriweather'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 20),
                    child: Text('jackson/0946',
                      style: TextStyle(fontSize: 18, fontFamily: 'Merriweather'),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}

class ContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = size.width * .25;
    Path path = Path()
      ..moveTo(0.0, size.height)
      ..lineTo(0.0, 0.0)
      ..arcToPoint(Offset(radius, size.height * .10),
          radius: Radius.circular(radius), clockwise: false)
      ..lineTo(radius * 3, size.height * .10)
      ..arcToPoint(Offset(size.width, size.height * .20),
          radius: Radius.circular(radius))
      ..lineTo(size.width, size.height)
      ..lineTo(0.0, size.height)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
