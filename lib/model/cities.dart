class Cities {
  int id;
  String name;
  String imageUrl;
  String property;
  bool isActive;

  Cities({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.property,
    this.isActive = false,
  });
}
