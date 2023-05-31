import 'package:flutter/material.dart';
import 'package:tf09p_0027_codigo_pokedex/ui/widget/item_data_group_item_widget.dart';

class ItemDataGroupWidget extends StatelessWidget {
  String title;
  List<dynamic> data;

  ItemDataGroupWidget({
    required this.title,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 6,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$title: ",
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
            Row(
              children: data
                  .map((e) => ItemDataGroupItemWidget(
                        item: e,
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
