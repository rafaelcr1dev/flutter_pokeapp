import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';
import 'package:pokeapp/src/view/widget/app_bar_widget.dart';
import 'package:pokeapp/src/view/widget/list_card_widget.dart';

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
        color: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 0,
        ),
        child: Column(children: <Widget>[ 
          SizedBox(height: 4),
          TextField(
            style: TextStyle(
              fontSize: 14.0, 
              color: Colors.white,
            ),
            autofocus: false,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.lightGrey,
              enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50)
                ),
                borderSide: BorderSide(
                  color: AppColors.white.withOpacity(0.2),
                  width: 1
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.primary,
                  width: 0
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              focusColor: AppColors.primary,
              hintText: 'Buscar...',
              prefixIcon: Icon(Icons.search, color: AppColors.primary),
            ),
          ),
          SizedBox(height: 14),
          ListCardWidget()
        ])
      ),
    );
  }
}