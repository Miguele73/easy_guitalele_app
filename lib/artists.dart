class Artist {
  String name;
  String imageUrl;
  String description;

  Artist({
    required this.name,
    required this.imageUrl,
    required this.description,
  });

  @override
  String toString() {
    return 'Artists{name: $name, imageUrl: $imageUrl, description: $description}';
  }
}
