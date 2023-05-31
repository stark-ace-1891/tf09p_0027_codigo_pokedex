import 'package:flutter/material.dart';
import 'package:tf09p_0027_codigo_pokedex/ui/general/colors.dart';

class ItemDataGroupItemWidget extends StatelessWidget {
  dynamic item;

  ItemDataGroupItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 4,
        right: 6,
        top: 4,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.8),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            offset: Offset(4, 4),
            blurRadius: 12,
          ),
        ],
      ),
      child: Text(
        item.toString(),
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
