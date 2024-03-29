import 'package:flutter/material.dart';

class HeaderClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 580);
    path.lineTo(size.width, size.height - 280);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClip) {
    return false;
  }
}
