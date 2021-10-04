import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';
import 'package:pokeapp/src/view/widget/app_bar_widget.dart';
import 'package:pokeapp/src/view/widget/button_widget.dart';
import 'package:pokeapp/src/view/widget/item_widget.dart';
import 'package:pokeapp/src/view/widget/title_page_widget.dart';
import 'package:pokeapp/src/view/widget/total_results_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 10,
        ),
        child: Column(children: <Widget>[ 
          TitlePageWidget(
            titleText: "Carrinho"
          ),
          SizedBox(height: 4),
          TotalResultsWidget(
            total: 20
          ),
          SizedBox(height: 14),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ItemWidget(
                  item: ""
                );
              },
            )
          ),
          SizedBox(height: 14),
          ButtonWidget(
            textButton: "Finalizar pedido",
            icon: Icons.shopping_cart,
            backgroundColor: AppColors.primary,
            fontColor: Colors.white,
            iconSize: 16,
            fontSize: 14
          ),
        ]),
      ),
    );
  }
}