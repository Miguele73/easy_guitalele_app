import 'package:easy_guitalele_app/src/features/auth/artist/artists.dart';
import 'package:easy_guitalele_app/src/features/auth/chord/chord.dart';
import 'package:easy_guitalele_app/src/features/auth/presentation/widgets/chord_song.dart';
import 'package:easy_guitalele_app/src/features/auth/song/song.dart';
import 'package:easy_guitalele_app/src/features/auth/presentation/widgets/tab_song.dart';
import 'package:easy_guitalele_app/src/features/auth/presentation/widgets/user_fav.dart';

import 'database_repository.dart';

class MockDatabaseRepository implements DatabaseRepository {
  // Simulierte Datenbank
  List<ChordSong> chordSongs = [];
  List<TabsSong> tabsSongs = [];
  List<UsersFav> favorites = [];
  List<Chord> allChords = [
    Chord(chordName: 'A', assetImagePath: 'assets/chords/A.png'),
    Chord(chordName: 'Am', assetImagePath: 'assets/chords/Am.png'),
    Chord(chordName: 'A+', assetImagePath: 'assets/chords/A+.png'),
    Chord(chordName: 'B', assetImagePath: 'assets/chords/B.png'),
    Chord(chordName: 'C', assetImagePath: 'assets/chords/C.png'),
    Chord(chordName: 'Cm', assetImagePath: 'assets/chords/Cm.png'),
    Chord(chordName: 'C7', assetImagePath: 'assets/chords/C7.png'),
    Chord(chordName: 'Cm7', assetImagePath: 'assets/chords/Cm7.png'),
    Chord(chordName: 'C+', assetImagePath: 'assets/chords/C+.png'),
    Chord(chordName: 'Cadd9', assetImagePath: 'assets/chords/Cadd9.png'),
    Chord(chordName: 'Cm6add9', assetImagePath: 'assets/chords/Cm6add9.png'),
    Chord(chordName: 'Dm', assetImagePath: 'assets/chords/Dm.png'),
    Chord(chordName: 'D', assetImagePath: 'assets/chords/D.png'),
    Chord(chordName: 'D7', assetImagePath: 'assets/chords/D7.png'),
    Chord(chordName: 'Dsus4', assetImagePath: 'assets/chords/Dsus4.png'),
    Chord(chordName: 'D+', assetImagePath: 'assets/chords/D+.png'),
    Chord(chordName: 'E', assetImagePath: 'assets/chords/E.png'),
    Chord(chordName: 'Em', assetImagePath: 'assets/chords/Em.png'),
    Chord(chordName: 'E7', assetImagePath: 'assets/chords/E7.png'),
    Chord(chordName: 'Esus2', assetImagePath: 'assets/chords/Esus2.png'),
    Chord(chordName: 'E+', assetImagePath: 'assets/chords/E+.png'),
    Chord(chordName: 'F', assetImagePath: 'assets/chords/F.png'),
    Chord(chordName: 'Fm', assetImagePath: 'assets/chords/Fm.png'),
    Chord(chordName: 'F7', assetImagePath: 'assets/chords/F7.png'),
    Chord(chordName: 'G', assetImagePath: 'assets/chords/G.png'),
    Chord(chordName: 'Gm', assetImagePath: 'assets/chords/Gm.png'),
    Chord(chordName: 'G7', assetImagePath: 'assets/chords/G7.png'),
    Chord(chordName: 'Gadd9', assetImagePath: 'assets/chords/Gadd9.png'),
    Chord(chordName: 'Bm9', assetImagePath: 'assets/chords/Bm9.png'),
    Chord(chordName: 'B7', assetImagePath: 'assets/chords/B7.png'),
    Chord(chordName: 'Bbm', assetImagePath: 'assets/chords/Bbm.png'),
    Chord(chordName: 'Bb', assetImagePath: 'assets/chords/Bb.png'),
    Chord(chordName: 'Bb7', assetImagePath: 'assets/chords/Bb7.png'),
    Chord(chordName: 'Bb+', assetImagePath: 'assets/chords/Bb+.png'),
    Chord(chordName: 'Bbsus4', assetImagePath: 'assets/chords/Bbsus4.png'),
    Chord(chordName: 'Bbsus2', assetImagePath: 'assets/chords/Bbsus2.png'),
  ];

  List<Song> songs = [
    Song(
      title: 'Angie',
      artist: Artist(name: 'The Rolling Stones'),
      coverUrl: 'assets/covers/angie.png',

      difficulty: SongDifficulty.medium,
      lengthOfSong: 242,
    ),
    Song(
      title: 'Blackbird',
      coverUrl: 'assets/covers/blackbird.png',

      difficulty: SongDifficulty.medium,
      artist: Artist(name: 'The Beatles'),
      lengthOfSong: null,
    ),
    Song(
      title: 'Boulevard of broken dreams',
      coverUrl: 'assets/covers/boulevard.png',

      difficulty: SongDifficulty.hard,
      artist: Artist(name: 'Green Day'),
      lengthOfSong: null,
    ),
    Song(
      title: 'Creep',
      coverUrl: 'assets/covers/creep.png',

      difficulty: SongDifficulty.medium,
      artist: Artist(name: 'Radiohead'),
      lengthOfSong: null,
    ),
    Song(
      title: 'Dust in the wind',
      coverUrl: 'assets/covers/dust_in_the_wind.png',

      difficulty: SongDifficulty.hard,
      artist: Artist(name: 'Kansas'),
      lengthOfSong: null,
    ),
    Song(
      title: 'Hallelujah',
      coverUrl: 'assets/covers/hallelujah.png',

      difficulty: SongDifficulty.hard,
      artist: Artist(name: 'Leonard Cohen'),
      lengthOfSong: null,
    ),
    Song(
      title: 'Hotel California',
      coverUrl: 'assets/covers/hotel_california.png',

      difficulty: SongDifficulty.veryEasy,
      artist: Artist(name: 'Eagles'),
      lengthOfSong: null,
    ),
    Song(
      title: 'I will always love you',
      coverUrl: 'assets/covers/i_will_always.png',

      difficulty: SongDifficulty.hard,
      artist: Artist(name: 'Whitney Houston'),
      lengthOfSong: null,
    ),
    Song(
      title: 'Knockin on heavens door',
      coverUrl: 'assets/covers/knocking_on_heavens.png',

      difficulty: SongDifficulty.easy,
      artist: Artist(name: 'Bob Dylan'),
      lengthOfSong: null,
    ),
  ];

  @override
  List<Song> getSongs() {
    return songs;
  }

  @override
  List<ChordSong> getChordSongs() {
    return chordSongs;
  }

  @override
  List<TabsSong> getTabsSongs() {
    return tabsSongs;
  }

  @override
  List<UsersFav> getUsersFavs() {
    return favorites;
  }

  @override
  List<Chord> getAllChords() {
    return allChords;
  }

  @override
  void addSongToFavorites(Song song) {
    for (UsersFav fav in favorites) {
      if (fav.song.title == song.title) {
        return;
      }
    }

    UsersFav newFav = UsersFav(song: song, isChordSong: song is ChordSong);
    favorites.add(newFav);
  }
}
