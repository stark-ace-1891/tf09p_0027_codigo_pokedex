import 'package:flutter/material.dart';
import 'package:tf09p_0027_codigo_pokedex/ui/widget/item_data_widget.dart';
import 'package:tf09p_0027_codigo_pokedex/ui/widget/item_type_widget.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff49d0B0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff49d0B0),
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
                      "Bulbasaur",
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
                      children: [
                        ItemTypeWidget(
                          text: "Grass",
                        ),
                        ItemTypeWidget(
                          text: "Poison",
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  "#001",
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
                              data: "1.5 m",
                            ),
                            ItemDataWidget(
                              title: "Weight",
                              data: "6.9 kg",
                            ),
                            ItemDataWidget(
                              title: "Candy",
                              data: "Bulbasaur Candy",
                            ),
                            ItemDataWidget(
                              title: "Candy Count",
                              data: "25",
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
                            "http://www.serebii.net/pokemongo/pokemon/001.png",
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
