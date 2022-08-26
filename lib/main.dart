import 'package:ccdriver/common/splashscreen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: buildThemeData(),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: const Color(0xFF183FCB),
        onPrimary: const Color(0xFF664EFF),
        secondary: const Color(0xFFEEC73C),
      ),
      indicatorColor: const Color(0xFF25E238),
      errorColor: const Color(0xFFF44336),
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Color(0xFF000000),
        ),
        bodyText2: TextStyle(
          color: Color(0xFF000000),
        ),
        button: TextStyle(
          color: Color(0xFF000000),
        ),
        headline1: TextStyle(
          color: Color(0xFF000000),
        ),
        headline2: TextStyle(
          color: Color(0xFF000000),
        ),
        subtitle1: TextStyle(
          color: Color(0xFFCCCCCC),
        ),
        subtitle2: TextStyle(
          color: Color(0xFFCCCCCC
      ),
    ),
      ),
    );
  }
}


