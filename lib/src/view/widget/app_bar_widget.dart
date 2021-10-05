import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';
import 'package:pokeapp/src/core/app_images.dart';

class AppBarWidget extends PreferredSize{
  AppBarWidget()
      : super(
          preferredSize: Size.fromHeight(54),
          child: AppBar(
            shadowColor: AppColors.white,
            leadingWidth: 70,
            leading: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(AppImages.logo),
            ),
            backgroundColor: Colors.transparent,
            bottomOpacity: 0.0,
            elevation: 0.0,
            actions: [
              IconButton(icon: Icon(
                Icons.favorite,
                color: AppColors.secondary,
              ),
                onPressed: () => {}
              ),
              IconButton(icon: Icon(
                Icons.shopping_cart,
                color: AppColors.secondary,
              ),
                onPressed: () => {}
              ),
            ],
          )
    );
}