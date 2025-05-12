class Chord {
  final String chordName; // e.g. "Am", "E7", "G"
  final String assetImagePath; // Path to the chord image
  final String assetSoundPath; // Path to the chord sound file

  Chord({
    required this.chordName,
    required this.assetImagePath,
    required this.assetSoundPath,
  });
}

// use this list to display the chords in the app
// and to play the sound when a chord is tapped
// this list does not have to be stored in the database
// it can be hardcoded in the app
List<Chord> chords = [
  Chord(
    chordName: 'A',
    assetImagePath: 'assets/chords/A.png',
    assetSoundPath: 'assets/sounds/A.mp3',
  ),
  Chord(
    chordName: 'Am',
    assetImagePath: 'assets/chords/Am.png',
    assetSoundPath: 'assets/sounds/Am.mp3',
  ),
  Chord(
    chordName: 'A#',
    assetImagePath: 'assets/chords/A#.png',
    assetSoundPath: 'assets/sounds/A#.mp3',
  ),
  Chord(
    chordName: 'B',
    assetImagePath: 'assets/chords/B.png',
    assetSoundPath: 'assets/sounds/B.mp3',
  ),
  // Add more chords as needed
];
