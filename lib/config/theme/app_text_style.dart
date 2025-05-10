import 'package:flutter/material.dart';
import 'colors.dart';

class AppTextStyle {
  static TextStyle appBarStyle() =>
      const TextStyle(
        fontSize: 22,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        color: defaultTextColor,
      );

  static TextStyle hintTextStyle() =>
      const TextStyle(
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        color: hintTextColor,
      );



  static TextStyle textFieldOptionStyle() =>
      const TextStyle(
        fontSize: 14,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        color: textFieldOptionColor,
      );
  
}