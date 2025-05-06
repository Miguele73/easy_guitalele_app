import 'package:easy_guitalele_app/chord_list_screen.dart';
import 'package:easy_guitalele_app/chord_selection_screen.dart';
import 'package:easy_guitalele_app/scale_selection_screen.dart';
import 'package:easy_guitalele_app/song_list_screen.dart';
import 'package:easy_guitalele_app/splash_screen.dart';
import 'package:flutter/material.dart';

class EasyGuitaleleApp extends StatelessWidget {
  const EasyGuitaleleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/songListScreen': (context) => const SongListScreen(),
        '/splashScreen': (context) => const SplashScreen(),
        '/chordSelectionScreen': (context) => ChordSelectionScreen(),
        '/scaleSelectionScreen': (context) => ScaleSelectionScreen(),
        '/chordListScreen': (context) => ChordListScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
