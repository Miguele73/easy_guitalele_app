import 'package:easy_guitalele_app/chord_song.dart';
import 'package:easy_guitalele_app/song.dart';
import 'package:easy_guitalele_app/tab_song.dart';
import 'package:easy_guitalele_app/user_fav.dart';

abstract class DatabaseRepository {
  List<ChordSong> getChordSongs();
  List<TabsSong> getTabsSongs();
  List<UsersFav> getUsersFavs();
  void addSongToFavorites(Song song);
}
