import 'package:flutter/material.dart';
import 'package:study_buddy/screens/detailPage.dart';
import 'package:study_buddy/screens/homepage.dart';
import 'package:study_buddy/screens/splash_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash_page',
      routes: {
        '/': (context) => const Homepage(),
        'splash_page': (context) => const SplashPage(),
        'detailpage': (context) => const Detailpage(),
      },
    ),
  );
}
