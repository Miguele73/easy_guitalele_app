import '../../song/song.dart';

class TabsSong extends Song {
  final String tabImgUrl;

  TabsSong({
    required super.title,
    required super.coverUrl,

    required super.difficulty,
    super.artist,
    required this.tabImgUrl,
    required super.lengthOfSong,
  });
}
