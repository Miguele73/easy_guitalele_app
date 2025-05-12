import '../artist/artists.dart';

enum SongDifficulty { veryEasy, easy, medium, hard, master }

abstract class Song {
  final String id;
  final SongDifficulty difficulty;
  final String coverUrl;
  final String title;
  final String description;
  final Artist? artist;
  final int? lengthOfSong; // in seconds

  Song({
    required this.id,
    required this.title,
    required this.coverUrl,
    required this.description,
    required this.difficulty,
    this.artist,
    this.lengthOfSong,
  });
}
