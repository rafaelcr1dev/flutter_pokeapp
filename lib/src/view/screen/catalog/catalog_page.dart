import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';
import 'package:pokeapp/src/view/widget/app_bar_widget.dart';
import 'package:pokeapp/src/view/widget/button_widget.dart';
import 'package:pokeapp/src/view/widget/list_card_widget.dart';
import 'package:pokeapp/src/view/widget/title_page_widget.dart';
import 'package:pokeapp/src/view/widget/total_results_widget.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      primary: Colors.black87,
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
    );

    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 10,
        ),
        child: Column(children: <Widget>[ 
          TitlePageWidget(
            titleText: "Pokemons"
          ),
          SizedBox(height: 4),
          TotalResultsWidget(
            total: 20
          ),
          SizedBox(height: 14),
          ButtonWidget(
            textButton: "Filtrar",
            icon: Icons.filter,
            backgroundColor: AppColors.primary,
            fontColor: Colors.white,
            iconSize: 16,
            fontSize: 14,
            onPressed: () {}
          ),
          SizedBox(height: 14),
          ListCardWidget()
        ])
      ),
    );
  }
}