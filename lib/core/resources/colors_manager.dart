import 'package:flutter/material.dart';

abstract class ColorsManager {
  // Generic
  static const Color mainMadkourColor = Color(0xFF186CBD);
  static const Color mainWhiteColor = Color(0xFFFFFFFF);

  // General
  static const Color gGrey = Color(0xff9E9E9E);
  static const Color gGreen = Color(0xFF4CAF50);
  static const Color gRed = Color(0xFFF03C2F);
                           
  // Scaffold
  static const Color sBlack = Color(0xFF1A1A1A);

  // TextFormField
  static const Color tffBackground = Color(0xFF1F222A);
  static const Color tffEnabled = Color(0xFF281920);

  // Swatch
  static const MaterialColor swatchBlue = MaterialColor(0xff186cbd, {
    50: Color(0xff186cbd),
    100: Color(0xff186cbd),
    200: Color(0xff186cbd),
    300: Color(0xff186cbd),
    400: Color(0xff186cbd),
    500: Color(0xff186cbd),
    600: Color(0xff186cbd),
    700: Color(0xff186cbd),
    800: Color(0xff186cbd),
    900: Color(0xff186cbd),
  });
}
