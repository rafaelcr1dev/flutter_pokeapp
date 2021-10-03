import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';
import 'package:pokeapp/src/core/app_images.dart';
import 'package:pokeapp/src/view/screen/catalog/catalog_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then(
      (_) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => CatalogPage(),
        ),
      ),
    );
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: AppColors.white),
        child: Center(
            child: Image.asset(
              AppImages.logo, 
              width: 120, 
              fit: BoxFit.fill,
            ),
        ),
      ),
    );
  }
}
