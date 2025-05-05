import 'song.dart';

class ChordSong extends Song {
  final List<Section> sections;

  ChordSong({
    required super.id,
    required super.title,
    required super.coverUrl,
    required super.description,
    required super.difficulty,
    super.artist,
    required this.sections,
  });
}

enum SectionType { verse, chorus, bridge, intro, outro, custom }

// Represents a section of the song (verse, chorus, etc.)
class Section {
  final SectionType type;
  final String? name; // Optional: e.g. "Verse 1", "Chorus"
  final List<Line> lines;

  Section({required this.type, this.name, required this.lines});
}

// Represents a text line with associated chords
class Line {
  final List<ChordPosition> chords;
  final String text;

  Line({required this.chords, required this.text});
}

// Represents a chord with its position in the text
class ChordPosition {
  final String chordName; // e.g. "Am", "E7", "G"
  final int position; // Word position relative to the beginning of the line

  ChordPosition({required this.chordName, required this.position});
}
