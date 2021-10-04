import 'package:flutter/material.dart';
import 'package:pokeapp/src/view/widget/app_bar_widget.dart';
import 'package:pokeapp/src/view/widget/list_card_widget.dart';
import 'package:pokeapp/src/view/widget/title_page_widget.dart';
import 'package:pokeapp/src/view/widget/total_results_widget.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({ Key? key }) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
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
            titleText: "Favoritos"
          ),
          SizedBox(height: 4),
          TotalResultsWidget(
            total: 20
          ),
          SizedBox(height: 14),
          ListCardWidget()
        ])
      ),
    );
  }
}