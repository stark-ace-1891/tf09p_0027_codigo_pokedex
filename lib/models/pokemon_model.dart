class PokemonModel {
  String name;
  String img;
  List<String> type;
  String numPokemon;
  String height;
  String weight;
  String candy;
  int? candyCount;
  List<dynamic>? multipliers;
  List<dynamic>? weaknesses;
  List<String>? nextEvolution;

  PokemonModel({
    required this.name,
    required this.img,
    required this.type,
    required this.numPokemon,
    required this.height,
    required this.weight,
    required this.candy,
    required this.candyCount,
    required this.multipliers,
    required this.weaknesses,
    required this.nextEvolution,
  });

  //constructor con nombre
  factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        name: json["name"],
        img: json["img"],
        type: List<String>.from(json["type"].map((e) => e)),
        numPokemon: json["num"],
        height: json["height"],
        weight: json["weight"],
        candy: json["candy"],
        candyCount: json["candy_count"] != null ? json["candy_count"] : null,
        multipliers: json["multipliers"] != null ? List<double>.from(json["multipliers"].map((e) => e)) : null,
        weaknesses: json["weaknesses"] != null ? List<String>.from(json["weaknesses"].map((e) => e)) : null,
        nextEvolution: json["next_evolution"] != null ? List<String>.from(json["next_evolution"]!.map((e) => e["name"])) : null,
      );
}
