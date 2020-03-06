import 'package:flutter/material.dart';

class Utility {
  static TextStyle get textStyle {
    return TextStyle(fontSize: 24, color: Colors.white);
  }

  static Gradient get backGround {
    return LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [Color(0xff2193b0), Color(0xff6dd5ed)],
    );
  }
}
