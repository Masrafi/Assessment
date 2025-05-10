import 'package:atbjobsapp/config/theme/colors.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      useMaterial3: false,
      primaryColor: const Color.fromRGBO(0, 121, 193, 1),
      //scaffoldBackgroundColor: const Color(0xFFF8F8FD),
      fontFamily: 'Epilogue',
      appBarTheme: appBarTheme());
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    centerTitle: false,
    iconTheme: IconThemeData(color: Color.fromRGBO(0, 121, 193, 1)),
    titleTextStyle: TextStyle(
        color: whiteColor, fontSize: 20, fontWeight: FontWeight.bold),
  );
}
