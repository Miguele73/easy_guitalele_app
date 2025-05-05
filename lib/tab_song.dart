import 'song.dart';

class TabsSong extends Song {
  final String tabImgUrl; // URL to the tab image file

  TabsSong({
    required super.id,
    required super.title,
    required super.coverUrl,
    required super.description,
    required super.difficulty,
    super.artist,
    required this.tabImgUrl,
  });
}
