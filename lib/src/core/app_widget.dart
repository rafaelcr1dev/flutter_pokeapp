import 'package:flutter/material.dart';
import 'package:pokeapp/src/view/screen/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pokeapp", 
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
