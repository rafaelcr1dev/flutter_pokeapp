import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';
import 'package:pokeapp/src/core/app_images.dart';
import 'package:pokeapp/src/view/widget/card_type_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  Widget _pokemonImage() {
    return Positioned(
      bottom: 0,
      right: 4,
      child: Image.asset(
        AppImages.pokemon,
        width: 80,
      ),
    );
  }

  Widget _pokemonTypes() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: CardTypeWidget(
        typeText: "Tipo",
        colored: true
      ),
    );
  }

  Widget _pokemonContent() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 20,
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Hero(
                tag: "#001 - Bubazauro",
                child: Text(
                  "Bubazauro",
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.4,
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondary,
                  ),
                ),
              ),
              SizedBox(height: 8),
              _pokemonTypes(),
              _pokemonTypes()
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: AppColors.secondary.withOpacity(0.1),
              blurRadius: 8,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Material(
            color: AppColors.secondary.withOpacity(0.03),
            child: InkWell(
              onTap: () => {},
              splashColor: Colors.white10,
              highlightColor: Colors.white10,
              child: Stack(
                children: [
                  _pokemonImage(),
                  _pokemonContent(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
