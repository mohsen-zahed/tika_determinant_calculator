import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tika_det_calculator/colors.dart';
import 'package:tika_det_calculator/main.dart';
import 'package:tika_det_calculator/screens/onboarding_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
      () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const OnboardingScreen(),
            ),
            (route) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tika Determinant App',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
            ),
            Image.asset(
              'assets/images/splash_back3.jpg',
              fit: BoxFit.fitHeight,
            ),
          ],
        ),
      ),
    );
  }
}
