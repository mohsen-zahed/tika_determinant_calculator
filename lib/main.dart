import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tika_det_calculator/colors.dart';
import 'package:tika_det_calculator/screens/det_2x2_screen/det_2x2_screen.dart';
import 'package:tika_det_calculator/screens/det_3x3_screen/det_3x3_screen.dart';
import 'package:tika_det_calculator/screens/det_choose_screen/det_choose_screen.dart';
import 'package:tika_det_calculator/screens/splash_screen.dart';

void main() {
  // is used to lock screen just in portraint mode...
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tika Determinant App Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(color: kPrimaryColor),
          backgroundColor: kTransparentColor,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: kPrimaryColor,
              ),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 20, 20, 20),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        DetChooseScreen.id: (context) => const DetChooseScreen(),
        Det2x2Screen.id: (context) => const Det2x2Screen(),
        Det3x3Screen.id: (context) => const Det3x3Screen(),
      },
      home: const SplashScreen(),
    );
  }
}
