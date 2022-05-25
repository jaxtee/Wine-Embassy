import 'package:flutter/material.dart';
import 'package:wine/components/concave_decoration.dart';

const double _radius = 24.0;
const double _blurRadius = 10.0;

List<BoxShadow> _shadows({@required Color light, @required Color dark}) {
  List<BoxShadow> shadows = [
    BoxShadow(
      blurRadius: _blurRadius,
      offset: Offset(-4, -4),
      color: light,
    ),
    BoxShadow(
      blurRadius: _blurRadius,
      offset: Offset(4, 4),
      color: dark,
    ),
  ];
  return shadows;
}

// Rounded rectangle
ConcaveDecoration innerShadow(BuildContext context,
  {double radius = _radius}) {
  return ConcaveDecoration(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
    ),
    colors: [Colors.grey.shade300, Colors.grey.shade600],
    depth: 6.0,
  );
}

BoxDecoration outerShadow(BuildContext context, {double radius = _radius}) {

  return BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    color: Colors.white,
    boxShadow: _shadows(
        light: Colors.grey.shade300,
        dark: Colors.grey.shade600,
    ),
  );
}

// Circle

BoxDecoration innerShadowCircle(BuildContext context) {
  return BoxDecoration(
    shape: BoxShape.circle,
    boxShadow: [
      BoxShadow(
        color: Colors.grey.shade300,
        spreadRadius: 20,
        blurRadius: 45,
        offset: Offset(0, 8),
      ),
    ],
  );
}

BoxDecoration outerShadowCircle(BuildContext context) {
  return BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      boxShadow: _shadows(
          light: Colors.grey.shade300,
          dark: Colors.grey.shade600,
      ),
  );
}