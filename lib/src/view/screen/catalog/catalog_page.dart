import 'package:flutter/material.dart';
import 'package:pokeapp/src/view/widget/app_bar_widget.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        child: Text("Catalog Page")
      ),
    );
  }
}