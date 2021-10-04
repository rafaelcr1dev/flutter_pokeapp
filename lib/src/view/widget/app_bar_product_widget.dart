import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';
import 'package:pokeapp/src/core/app_images.dart';

class AppBarProductWidget extends PreferredSize{
  AppBarProductWidget()
      : super(
          preferredSize: Size.fromHeight(54),
          child: AppBar(
            shape: Border(
              bottom: BorderSide(
                color: AppColors.primary, 
                width: 0,
              ),
            ),
            shadowColor: AppColors.primary,
            leading: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset(AppImages.logo),
            ),
            backgroundColor: AppColors.primary,
            bottomOpacity: 0,
            elevation: 0.0,
            actions: [
              IconButton(icon: Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
                onPressed: () => {}
              )
            ],
          )
    );
}