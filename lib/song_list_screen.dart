import 'package:easy_guitalele_app/desicions_box.dart';
import 'package:easy_guitalele_app/one_back_button.dart';
import 'package:easy_guitalele_app/song_detail_selection_screen.dart';
import 'package:flutter/material.dart';

class SongListScreen extends StatelessWidget {
  const SongListScreen({super.key});

  get songs => [
    'Song 1',
    'Song 2',
    'Song 3',
    'Song 4',
    'Song 5',
    'Song 6',
    'Song 7',
    'Song 8',
    'Song 9',
    'Song 10',
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
              onTap: () {
                Navigator.pushNamed(context, '/songListScreen');
              },
              color: Color(0xFFDE7A22),
              selectionText: 'Songs',
              imageIcon: ImageIcon(
                AssetImage('assets/icons/music-4SongsIcon.png'),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                shrinkWrap: false,
                itemCount: songs.length,
                itemBuilder: (context, index) {
                  final String song = songs[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Card(
                      color: const Color(0xFFBCBABE),
                      child: ListTile(
                        title: Text(song),
                        leading: const Icon(Icons.music_note),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      SongDetailSelectionScreen(songName: song),
                            ),
                          );
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
