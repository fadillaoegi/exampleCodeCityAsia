


class Recipes {
  Recipes({
    required this.id,
    required this.title,
    required this.image,
  });

  int id;
  String title;
  String image;

  factory Recipes.fromJson(Map<String, dynamic> json) => Recipes(
    id: json["id"],
    title: json["title"],
    image: json["image"],
  );

}
