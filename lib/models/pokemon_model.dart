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
  // List<Map<String, dynamic>> nextEvolution;

  PokemonModel({
    required this.name,
    required this.img,
    required this.type,
    required this.numPokemon,
    required this.height,
    required this.weight,
    required this.candy,
    this.candyCount,
    this.multipliers,
    this.weaknesses,
    // required this.nextEvolution,
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
        candyCount: json["candy_count"],
        multipliers: json["multipliers"],
        weaknesses: json["weaknesses"],
        // nextEvolution: json["next_evolution"],
      );
}
