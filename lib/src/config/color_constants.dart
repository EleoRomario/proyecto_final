import 'package:flutter/material.dart';

class ColorConstants {
  static const Color blue = Color.fromARGB(255, 81, 142, 248);
  static const Color green = Color.fromARGB(255, 46, 204, 113);
  static const Color yellow = Color.fromARGB(255, 243, 156, 18);
  //static const MaterialColor primary = MaterialColor(100, <int, Color>{50: Color(0xFF518EF8)});
  static const MaterialColor primary =  MaterialColor(
    0xFF518EF8,
    <int, Color>{
      50:Color(0xff518ef8), //10%
      100:Color(0xff518ef8), //20%
      200:Color(0xff518ef8), //30%
      300:Color(0xff518ef8), //40%
      400:Color(0xff518ef8), //50%
      500:Color(0xff518ef8), //60%
      600:Color(0xff518ef8), //70%
      700:Color(0xff518ef8), //80%
      800:Color(0xff518ef8), //90%
      900:Color(0xff518ef8), //100%
    },
  );
}
