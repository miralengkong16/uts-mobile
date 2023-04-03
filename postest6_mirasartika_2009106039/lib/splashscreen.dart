import 'dart:async';

import 'package:flutter/material.dart';
import 'package:postest6_mirasartika_2009106039/LandingPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashScreenStart();
    super.initState();
  }

  splashScreenStart() {
    var duration = Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return LandingPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/Logo.png",
        ),
      ),
    );
  }
}
