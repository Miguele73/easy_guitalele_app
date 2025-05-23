import 'package:easy_guitalele_app/src/features/auth/chord/chord.dart';
import 'package:easy_guitalele_app/src/features/auth/presentation/widgets/chord_song.dart';
import 'package:easy_guitalele_app/src/features/auth/song/song.dart';
import 'package:easy_guitalele_app/src/features/auth/presentation/widgets/tab_song.dart';
import 'package:easy_guitalele_app/src/features/auth/presentation/widgets/user_fav.dart';

abstract class DatabaseRepository {
  List<Song> getSongs();
  List<Chord> getAllChords();
  List<ChordSong> getChordSongs();
  List<TabsSong> getTabsSongs();
  List<UsersFav> getUsersFavs();
  void addSongToFavorites(Song song);
}
