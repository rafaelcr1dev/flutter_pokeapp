import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';
import 'package:pokeapp/src/core/models/todo/todo.model.dart';
import 'package:pokeapp/src/shared/stores/todo/todo.store.dart';
import 'package:pokeapp/src/view/widget/app_bar_widget.dart';
import 'package:pokeapp/src/view/widget/button_widget.dart';
import 'package:pokeapp/src/view/widget/list_card_widget.dart';

final todoStore = TodoStore();

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

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
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    borderSide: BorderSide(
                        color: AppColors.white.withOpacity(0.2), width: 1)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.primary, width: 0),
                  borderRadius: BorderRadius.circular(50),
                ),
                focusColor: AppColors.primary,
                hintText: 'Buscar...',
                prefixIcon: Icon(Icons.search, color: AppColors.primary),
              ),
            ),
            SizedBox(height: 14),
            ButtonWidget(
              textButton: "Finalizar pedido",
              icon: Icons.shopping_cart,
              backgroundColor: AppColors.primary,
              fontColor: Colors.white,
              iconSize: 16,
              fontSize: 14,
              onPressed: () {
                var todo = new Todo(
                  id: 1,
                  title: "Testando",
                  done: false,
                );
                todoStore.add(todo);
              },
            ),
            ListCardWidget(),
          ])),
    );
  }
}
