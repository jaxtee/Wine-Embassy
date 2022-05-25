import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  final icon;

  ProfileButtons({
    Key key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      width: 75.0,
      padding: EdgeInsets.all(20),
      child: Icon(
        icon,
        size: 37,
        color: Colors.white,
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade400,
              offset: Offset(4.0, 4.0),
              blurRadius: 10.0,
              spreadRadius: 1.0),
          BoxShadow(
              color: Colors.grey.shade700,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0)
        ],
      ),
    );
  }
}
