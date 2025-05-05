import 'package:flutter/material.dart';

class NotesScreen extends StatelessWidget {
  final String songName;
  const NotesScreen({super.key, required this.songName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noten für $songName'),
        backgroundColor: const Color(0xFF505160),
      ),
      backgroundColor: const Color(0xFF505160),
      body: Center(child: Text('Zeige Noten für $songName')),
    );
  }
}
