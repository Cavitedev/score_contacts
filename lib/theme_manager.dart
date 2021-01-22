import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class ThemeManager {

  ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color.fromRGBO(250, 250, 250, 1),
    dialogBackgroundColor: const Color.fromRGBO(245, 245, 245, 1),
    primaryColor: Colors.blue[800],
    accentColor: Colors.grey[400],
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.blue[900],
    ),
    popupMenuTheme: const PopupMenuThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      elevation: 4,
    ),
    dividerColor: const Color.fromRGBO(20, 20, 20, 1),
    highlightColor: Colors.blueAccent[700],
    focusColor: Colors.blueAccent[400],
    cursorColor: Colors.blue[700],
    textSelectionColor: Colors.white,
    textSelectionHandleColor: Colors.blue[600],
    disabledColor: Colors.grey[500],
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
    ),
    iconTheme: const IconThemeData(color: Colors.grey, size: 32),
    textTheme: TextTheme(
        headline2: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        headline3: const TextStyle(fontSize: 26, color: Colors.white),
        headline5: const TextStyle(
          fontSize: 16,
        ),
        headline6: const TextStyle(fontSize: 14, letterSpacing: .5),
        subtitle1: const TextStyle(fontSize: 16, letterSpacing: .5),
        subtitle2: const TextStyle(
          fontSize: 14,
          letterSpacing: .5,
        ),
        caption: TextStyle(fontSize: 15, color: Colors.grey[700]),
        button: TextStyle(fontSize: 20, color: Colors.blueAccent[400])),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color.fromRGBO(30, 30, 30, 1),
    dialogBackgroundColor: const Color.fromRGBO(35, 35, 35, 1),
    primaryColor: Colors.blue[800],
    accentColor: Colors.grey[400],
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.blue[900],
    ),
    popupMenuTheme: const PopupMenuThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      elevation: 4,
    ),
    dividerColor: const Color.fromRGBO(20, 20, 20, 1),
    highlightColor: Colors.blueAccent[700],
    focusColor: Colors.blueAccent[100],
    cursorColor: Colors.blue[700],
    textSelectionColor: const Color.fromRGBO(40, 40, 40, 1),
    textSelectionHandleColor: Colors.blue[600],
    disabledColor: Colors.grey[500],
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
    ),
    iconTheme: const IconThemeData(color: Colors.grey, size: 32),
    textTheme: TextTheme(
        headline2: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        headline3: const TextStyle(fontSize: 26),
        headline5: const TextStyle(
          fontSize: 16,
        ),
        headline6: const TextStyle(fontSize: 14, letterSpacing: .5),
        subtitle1: const TextStyle(fontSize: 16, letterSpacing: .5),
        subtitle2: const TextStyle(
          fontSize: 14,
          letterSpacing: .5,
        ),
        caption: TextStyle(fontSize: 15, color: Colors.grey[400]),
        button: TextStyle(fontSize: 20, color: Colors.blueAccent[100])),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
