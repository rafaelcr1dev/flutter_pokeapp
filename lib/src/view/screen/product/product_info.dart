import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';
import 'package:pokeapp/src/core/app_images.dart';
import 'package:pokeapp/src/view/widget/app_bar_product_widget.dart';
import 'package:pokeapp/src/view/widget/button_widget.dart';
import 'package:pokeapp/src/view/widget/card_type_widget.dart';

class ProductInfoPage extends StatefulWidget {
  const ProductInfoPage({Key? key}) : super(key: key);

  @override
  _ProductInfoPageState createState() => _ProductInfoPageState();
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  Widget _pokemonTypes() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: CardTypeWidget(
        typeText: "Tipo",
      ),
    );
  }

  Widget _pokemonInfosAndImage() {
    return Container(
      color: AppColors.primary,
      padding: EdgeInsets.all(14),
      child: Column(
        children: <Widget>[
          Row(children: [
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bubazauro",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          height: 1.4,
                          color: Colors.white,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Wrap(
                  children: [
                    _pokemonTypes(),
                    _pokemonTypes(),
                    _pokemonTypes(),
                    _pokemonTypes(),
                    _pokemonTypes(),
                    _pokemonTypes()
                  ],
                ),
              ),
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppImages.pokemon,
                        alignment: Alignment.center,
                        width: 200,
                      ),
                    ],
                  ),
              ],
          ),
          ButtonWidget(
            textButton: "Adicionar no carrinho",
            icon: Icons.shopping_cart,
            fontColor: Colors.white,
            backgroundColor: Colors.white.withOpacity(0.1),
            iconSize: 18,
            fontSize: 14,
            onPressed: () {}
          ),
        ],
      ),
    );
  }

  Widget _pokemonAbout() {
    return Container(
      padding: EdgeInsets.only(
        right: 14, 
        left: 14, 
        top: 40, 
        bottom: 40,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Expanded(
                child: Wrap(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, 
                      children: [
                        Text(
                          "Sobre",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            height: 1.4,
                            color: AppColors.secondary,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                          style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                            color: AppColors.secondary.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarProductWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _pokemonInfosAndImage(),
            _pokemonAbout(),
          ],
        ),
      ),
    );
  }
}
