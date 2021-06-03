import 'dart:ui';

import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color.fromRGBO(240, 240, 240, 1),
  dialogBackgroundColor: const Color.fromRGBO(235, 235, 235, 1),
  primaryColor: Colors.blue[800],
  primaryColorDark: Colors.grey[900],
  primaryColorLight: Colors.white,
  accentColor: Colors.blueGrey[100],
  buttonColor: const Color.fromRGBO(250, 250, 250, 1),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.blue[900],
  ),
  popupMenuTheme: const PopupMenuThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    elevation: 4,
  ),
  dividerColor: const Color.fromRGBO(50, 50, 50, 1),
  highlightColor: Colors.blueAccent[700],
  focusColor: Colors.blueAccent[400],
  textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.blue[700],
      selectionColor: Colors.white,
      selectionHandleColor: Colors.blue[600]),
  disabledColor: Colors.grey[500],
  inputDecorationTheme: const InputDecorationTheme(
    border: InputBorder.none,
  ),
  iconTheme: const IconThemeData(color: Colors.grey, size: 32),
  accentIconTheme: IconThemeData(color: Colors.lightBlueAccent[700], size: 32),
  textTheme: TextTheme(
      headline2: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
      headline3: const TextStyle(fontSize: 24, color: Colors.white),
      headline4: const TextStyle(fontSize: 20, color: Colors.black),
      headline5: const TextStyle(fontSize: 16, color: Colors.black),
      headline6:
          const TextStyle(fontSize: 14, letterSpacing: .5, color: Colors.black),
      subtitle1:
          const TextStyle(fontSize: 16, letterSpacing: .5, color: Colors.black),
      subtitle2:
          const TextStyle(fontSize: 14, letterSpacing: .5, color: Colors.black),
      caption: TextStyle(fontSize: 15, color: Colors.grey[700]),
      button: TextStyle(fontSize: 20, color: Colors.blueAccent[400])),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color.fromRGBO(30, 30, 30, 1),
  dialogBackgroundColor: const Color.fromRGBO(35, 35, 35, 1),
  primaryColor: Colors.blue[800],
  accentColor: Colors.blueGrey[100],
  buttonColor: Colors.blue[900],
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.blue[900],
  ),
  popupMenuTheme: const PopupMenuThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    elevation: 4,
  ),
  dividerColor: const Color.fromRGBO(100, 100, 100, 1),
  highlightColor: Colors.blueAccent[700],
  focusColor: Colors.grey[600],
  textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.blue[700],
      selectionColor: const Color.fromRGBO(40, 40, 40, 1),
      selectionHandleColor: Colors.blue[600]),
  accentIconTheme: IconThemeData(color: Colors.lightBlueAccent[700], size: 32),
  disabledColor: Colors.grey[500],
  inputDecorationTheme: const InputDecorationTheme(
    border: InputBorder.none,
  ),
  iconTheme: const IconThemeData(color: Colors.grey, size: 32),
  textTheme: TextTheme(
      headline2: const TextStyle(
          fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
      headline3: const TextStyle(fontSize: 24, color: Colors.white),
      headline4: const TextStyle(fontSize: 20, color: Colors.white),
      headline5: const TextStyle(fontSize: 16, color: Colors.white),
      headline6:
          const TextStyle(fontSize: 14, letterSpacing: .5, color: Colors.white),
      subtitle1:
          const TextStyle(fontSize: 16, letterSpacing: .5, color: Colors.white),
      subtitle2:
          const TextStyle(fontSize: 14, letterSpacing: .5, color: Colors.white),
      caption: TextStyle(fontSize: 15, color: Colors.grey[500]),
      button: TextStyle(fontSize: 20, color: Colors.blue[50])),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
