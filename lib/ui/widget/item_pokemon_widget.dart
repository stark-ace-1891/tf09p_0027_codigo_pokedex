import 'package:flutter/material.dart';
import 'package:tf09p_0027_codigo_pokedex/models/pokemon_model.dart';
import 'package:tf09p_0027_codigo_pokedex/pages/detail_page.dart';
import 'package:tf09p_0027_codigo_pokedex/ui/general/colors.dart';
import 'package:tf09p_0027_codigo_pokedex/ui/widget/item_type_widget.dart';

class ItemPokemonWidget extends StatelessWidget {
  // String name;
  // String image;
  // List<String> types;
  PokemonModel pokemon;

  ItemPokemonWidget({
    // required this.name,
    // required this.image,
    // required this.types,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              pokemon: pokemon,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: colorsPokemon[pokemon.type[0]],
          borderRadius: BorderRadius.circular(18),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: -20,
              right: -20,
              child: Image.asset(
                "assets/images/pokeball.png",
                height: 120,
                color: Colors.white.withOpacity(0.27),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pokemon.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  // Column(
                  //   children: types.map((e) => ItemTypeWidget()).toList(),
                  // ),

                  ...pokemon.type
                      .map((e) => ItemTypeWidget(
                            text: e,
                          ))
                      .toList(),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.network(
                pokemon.img,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
