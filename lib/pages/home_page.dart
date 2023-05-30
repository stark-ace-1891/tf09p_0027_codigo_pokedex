import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tf09p_0027_codigo_pokedex/ui/widget/item_pokemon_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pokemons = [];

  @override
  initState() {
    super.initState();
    getDataPokemon();
  }

  //Url - Localizador de ecurso en el servidor local
  getDataPokemon() async {
    Uri _uri = Uri.parse(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    http.Response response = await http.get(_uri);
    if (response.statusCode == 200) {
      //response.body -> siempre es un String
      Map<String, dynamic> myMap = json.decode(response.body);
      pokemons = myMap["pokemon"];
      setState(() {});

      // pokemons.forEach((element) {
      //   print(element["name"]);
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Pokedex",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GridView.count(
                  physics: const ScrollPhysics(),
                  shrinkWrap:
                      true, //limita el alto que puede tener el gridview con el scroll, con el tamaño de los hijos que posee
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 1.35,
                  children: pokemons.map(
                    (e) => ItemPokemonWidget(
                      name: e["name"],
                      image: e["img"],
                      types: List<String>.from(e["type"].map((item) => item)),
                    ),
                  ).toList(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
