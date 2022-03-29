import 'dart:async';

import 'package:flutter/material.dart';
import 'package:imparatarot/constants.dart';
import 'package:imparatarot/screens/home_screen.dart';

import '../widgets/background_image.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 6), () async {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColorPrimary,
      body: Stack(
        alignment: Alignment.center,
        children: [
          BackgorundImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _centerLogo(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _logoTitle(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _centerLogo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Image.asset(
        'assets/images/logo icondeneme.png',
      ),
    );
  }

  Widget _logoTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 110),
      child: Text(
        "Emperotarot".toUpperCase(),
        style: const TextStyle(
          fontFamily: 'Macondo',
          fontSize: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
