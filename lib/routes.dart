// import 'package:easy_guitalele_app/chord_list_screen.dart';
// import 'package:easy_guitalele_app/chord_selection_screen.dart';
// import 'package:easy_guitalele_app/scale_selection_screen.dart';
import 'package:easy_guitalele_app/song_list_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  '/songListScreen': (context) => SongListScreen(),
  // '/chordSelectionScreen': (context) => ChordSelectionScreen(),
  // '/scaleSelectionScreen': (context) => ScaleSelectionScreen(),
  // '/chordListScreen': (context) => ChordListScreen(),
};
