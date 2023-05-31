import 'package:flutter/material.dart';
import 'package:tf09p_0027_codigo_pokedex/models/pokemon_model.dart';
import 'package:tf09p_0027_codigo_pokedex/ui/general/colors.dart';
import 'package:tf09p_0027_codigo_pokedex/ui/widget/item_data_widget.dart';
import 'package:tf09p_0027_codigo_pokedex/ui/widget/item_type_widget.dart';

class DetailPage extends StatelessWidget {
  PokemonModel pokemon;
  DetailPage({
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: colorsPokemon[pokemon.type.first],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_outlined,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: height * 0.1,
            right: -30,
            child: Image.asset(
              "assets/images/pokeball.png",
              height: 200,
              color: Colors.white.withOpacity(0.2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      pokemon.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: pokemon.type.map((e) => ItemTypeWidget(text: e)).toList(),
                    ),
                  ],
                ),
                Text(
                  "#${pokemon.numPokemon}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 4,
                child: SizedBox(),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      //Data del pokemon
                      Padding(
                        padding: const EdgeInsets.all(22),
                        child: Column(
                          children: [
                            Text(
                              "About Pokemon",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ItemDataWidget(
                              title: "Height",
                              data: pokemon.height,
                            ),
                            ItemDataWidget(
                              title: "Weight",
                              data: pokemon.weight,
                            ),
                            ItemDataWidget(
                              title: "Candy",
                              data: pokemon.candy,
                            ),
                            ItemDataWidget(
                              title: "Candy Count",
                              data: pokemon.candyCount.toString(),
                            ),
                          ],
                        ),
                      ),
                      //Imagen del pokemon
                      Positioned.fill(
                        top: -90,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Image.network(
                            pokemon.img,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
