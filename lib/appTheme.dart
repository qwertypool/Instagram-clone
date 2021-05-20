import 'package:flutter/material.dart';

import 'colorThemes.dart';


ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: pPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    //appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: pContentColorLightTheme),
   // textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
       // .apply(bodyColor: pContentColorLightTheme),
    colorScheme: ColorScheme.light(
      primary: pPrimaryColor,
      secondary: pSecondaryColor,
      error: pErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor:Colors.black,
      unselectedItemColor:Colors.black,
      //selectedIconTheme: IconThemeData(color: pPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: pPrimaryColor,
    scaffoldBackgroundColor: pContentColorLightTheme,
    //appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: pContentColorDarkTheme),
    // textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
    //     .apply(bodyColor: pContentColorDarkTheme),
    colorScheme: ColorScheme.dark().copyWith(
      primary: pPrimaryColor,
      secondary: pSecondaryColor,
      error: pErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.grey,
      unselectedItemColor: Colors.grey.withOpacity(0.42),
      //selectedIconTheme: IconThemeData(color: pPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}