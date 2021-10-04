import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';

class CardTypeWidget extends StatelessWidget {
  const CardTypeWidget({
    required this.typeText,
    this.large = true,
    this.colored = true,
  }) : super();

  final String typeText;
  final bool large;
  final bool colored;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 19,
          vertical: 6,
        ),
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: (AppColors.primary).withOpacity(0.1),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              this.typeText,
              textScaleFactor: 1,
              style: TextStyle(
                fontSize: large ? 12 : 8,
                height: 0.8,
                fontWeight: large ? FontWeight.bold : FontWeight.normal,
                color:
                    colored ? AppColors.primary.withOpacity(0.3) : Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
