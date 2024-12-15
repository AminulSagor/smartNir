import 'package:flutter/material.dart';
import 'package:smar_tnir/screens/all_features_screen.dart';
import 'package:smar_tnir/screens/home_screen.dart';
import 'package:smar_tnir/screens/onboarding_screen.dart';
import 'package:smar_tnir/screens/otp_screen.dart';
import 'package:smar_tnir/screens/signin_screen.dart';
import 'package:smar_tnir/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AllFeaturesScreen(),
    );
  }
}
