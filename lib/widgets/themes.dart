import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData ligthTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.blueGrey,
      fontFamily: GoogleFonts.poppins().fontFamily,
      // ignore: prefer_const_constructors
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        // ignore: prefer_const_constructors
        iconTheme: IconThemeData(color: Colors.black),
        toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
        titleTextStyle: Theme.of(context).textTheme.headline6,
      ));
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );

  //Colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darlBluishColor = const Color(0xff403b58);
}
