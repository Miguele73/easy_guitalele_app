import 'package:easy_guitalele_app/desicions_box.dart';
import 'package:easy_guitalele_app/one_back_button.dart';
import 'package:flutter/material.dart';

class ChordListScreen extends StatefulWidget {
  const ChordListScreen({super.key});

  @override
  State<ChordListScreen> createState() => _ChordListScreenState();
}

class _ChordListScreenState extends State<ChordListScreen> {
  get chords => [
    'C Major',
    'G Major',
    'D Major',
    'A Major',
    'E Major',
    'B Major',
    'F# Major',
    'Db Major',
    'Ab Major',
    'Eb Major',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF505160),
      appBar: AppBar(
        toolbarHeight: 250,
        backgroundColor: const Color(0xFF505160),
        title: Image.asset('assets/logo/logo.png', height: 200, width: 200),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const OneBackButton(),
      body: SafeArea(
        child: Column(
          children: [
            DesicionsBox(
              color: Color(0xFFDE7A22),
              selectionText: 'Chordliste',
              imageIcon: ImageIcon(
                AssetImage('assets/icons/music-4ChordsIcon.png'),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                shrinkWrap: false,
                itemCount: chords.length,
                itemBuilder: (context, index) {
                  final String chord = chords[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Card(
                      color: const Color(0xFFBCBABE),
                      child: ListTile(
                        title: Text(chord),
                        leading: const Icon(Icons.music_note),
                        onTap: () {
                          // Handle chord selection
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
