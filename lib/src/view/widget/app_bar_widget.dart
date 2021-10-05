import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';
import 'package:pokeapp/src/core/app_images.dart';
import 'package:pokeapp/src/view/screen/cart/cart_page.dart';
import 'package:pokeapp/src/view/screen/catalog/catalog_page.dart';
import 'package:pokeapp/src/view/screen/favorite/favorite_page.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool hasBackButton;

  const AppBarWidget({Key? key, this.hasBackButton = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: AppColors.white,
      leadingWidth: 70,
      leading: !this.hasBackButton
          ? Container(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(AppImages.logo),
            )
          : IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.secondary,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
      title: new Text(
        "Olá visitante de Barueri, SP",
        style: TextStyle(
          fontSize: 12,
          color: AppColors.secondary.withOpacity(0.4),
        ),
      ),
      backgroundColor: Colors.white,
      bottomOpacity: 0.0,
      elevation: 0.0,
      actions: [
        IconButton(
          icon: Icon(
            Icons.favorite,
            color: AppColors.secondary,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FavoritePage(),
              ),
            );
          },
        ),
        IconButton(
          icon: new Stack(children: <Widget>[
            new Icon(
              Icons.shopping_cart,
              color: AppColors.secondary,
            ),
            new Positioned(
              top: -2,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 3,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary,
                ),
                alignment: Alignment.center,
                child: new Observer(
                  builder: (_) => Text(
                    todoStore.todos.length.toString(),
                    style: TextStyle(
                      fontSize: 8,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ]),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartPage(),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
