import 'package:easy_guitalele_app/song_list_screen.dart';
import 'package:easy_guitalele_app/splash_screen.dart';
import 'package:flutter/material.dart';

class EasyGuitaleleApp extends StatelessWidget {
  const EasyGuitaleleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
