import '../artist/artists.dart';

enum SongDifficulty { veryEasy, easy, medium, hard, master }

class Song {
  final SongDifficulty difficulty;
  final String coverUrl;
  final String title;

  final Artist? artist;
  final int? lengthOfSong;

  Song({
    required this.title,
    required this.coverUrl,

    required this.difficulty,
    required this.artist,
    required this.lengthOfSong,
  });
}
