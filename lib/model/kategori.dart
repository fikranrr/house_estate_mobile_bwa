class Kategori {
  int id;
  String name;
  String imageUrl;
  bool isActive;

  Kategori(
      {required this.id,
      required this.name,
      required this.imageUrl,
      this.isActive = false});
}
