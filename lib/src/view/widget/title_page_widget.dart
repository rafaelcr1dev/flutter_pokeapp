import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';

class TitlePageWidget extends StatelessWidget {
  final String titleText;

  const TitlePageWidget({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              this.titleText,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: AppColors.secondary,
              ),
            )
          ],
        )
      ],
    );
  }
}
