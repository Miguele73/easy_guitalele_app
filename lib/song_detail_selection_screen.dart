import 'package:easy_guitalele_app/chords_screen.dart';
import 'package:easy_guitalele_app/notes_screen.dart';
import 'package:flutter/material.dart';

class SongDetailSelectionScreen extends StatelessWidget {
  final String songName;

  const SongDetailSelectionScreen({super.key, required this.songName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(songName),
        backgroundColor: const Color(0xFF505160),
      ),
      backgroundColor: const Color(0xFF505160),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigiere zum Bildschirm, der die Noten für dieses Lied anzeigt
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotesScreen(songName: songName),
                  ),
                );
              },
              child: const Text('Noten anzeigen'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigiere zum Bildschirm, der die Akkorde für dieses Lied anzeigt
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChordsScreen(songName: songName),
                  ),
                );
              },
              child: const Text('Akkorde anzeigen'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Gehe zurück zur Songliste
              },
              child: const Text('Zurück'),
            ),
          ],
        ),
      ),
    );
  }
}
