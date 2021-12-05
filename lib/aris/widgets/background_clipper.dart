import 'package:flutter/material.dart';

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double offset = 35;
    var path = Path();
    path.lineTo(0, size.height - offset);
    path.quadraticBezierTo(0, size.height, offset, size.height);
    path.lineTo(size.width - offset, size.height - 24);
    path.quadraticBezierTo(size.width, size.height - 24, size.width, size.height - 2 * offset);
    path.lineTo(size.width, offset);
    path.quadraticBezierTo(size.width, 0, size.width - offset, 0);
    path.lineTo(offset, 0);
    path.quadraticBezierTo(0, 0, 0, offset);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
