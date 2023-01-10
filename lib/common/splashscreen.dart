import 'dart:async';

import 'package:ccdriver/common/Auth/screens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../CAB/Driver/Home/screen/DriverHome.dart';
import '../constant/app_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkLogin();
  }

  checkLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    String? token = pref.getString(AppString.token);

    if (token == null) {
      navigateLogin();
    } else {
      navigateHome();
    }
  }

  navigateHome() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => DriverHome()));
  }

  navigateLogin() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LogIn(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}
