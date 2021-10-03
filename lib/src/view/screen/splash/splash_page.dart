import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';
import 'package:pokeapp/src/core/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container (
        decoration: BoxDecoration(
          color: AppColors.white
        ),
        child: Center (
          child: Image.asset(
            AppImages.logo,
            width: 120,
            fit: BoxFit.fill 
          )
        ),
      ),
    );
  }
}