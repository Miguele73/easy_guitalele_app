import 'package:easy_guitalele_app/src/features/auth/artist/artists.dart';
import 'package:easy_guitalele_app/src/features/auth/presentation/widgets/desicions_box.dart';
import 'package:easy_guitalele_app/src/features/auth/presentation/widgets/my_app_bar.dart';
import 'package:easy_guitalele_app/src/features/auth/song/song.dart';
import 'package:easy_guitalele_app/src/features/screen/song_detail_selection_screen.dart';
import 'package:easy_guitalele_app/src/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SongListScreen extends StatefulWidget {
  const SongListScreen({super.key});

  @override
  State<SongListScreen> createState() => _SongListScreenState();
}

class _SongListScreenState extends State<SongListScreen> {
  get song => Song(
    title: '',
    coverUrl: '',
    difficulty: SongDifficulty.medium,
    artist: Artist(name: ''),
    lengthOfSong: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: MyAppBar(automaticallyImplyLeading: true),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              DesicionsBox(
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
                  itemCount: song.length,
                  itemBuilder: (context, index) {
                    final String song = 'song $index';
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
                                    (context) => SongDetailSelectionScreen(
                                      songName: song,
                                    ),
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
      ),
    );
  }
}
