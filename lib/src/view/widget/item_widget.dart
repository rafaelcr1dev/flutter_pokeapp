import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';

class ItemWidget extends StatelessWidget {
  final String item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png"),
      title: Text("Bubazauro"),
      subtitle: Text("Esse pokemon é legal"),
      trailing: GestureDetector(
        onTap: () => { print("foi") },
        child: new Icon(Icons.remove_circle_outline,
          color: AppColors.secondary.withOpacity(0.3),
        )
      ),
    );
  }
}
