class Staff {
  int id;
  String name;
  String imageUrl;
  String price;
  String feat;
  bool isActive;

  Staff(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.price,
      required this.feat,
      this.isActive = false});
}
