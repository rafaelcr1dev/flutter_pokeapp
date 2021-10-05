import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';

class CardTypeWidget extends StatelessWidget {
  const CardTypeWidget({
    required this.typeText,
    this.large = true,
    this.colored = false,
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
        margin: EdgeInsets.only(right: 4, bottom: 0),
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: colored ? (AppColors.primary) : (Colors.white).withOpacity(0.1),
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
                    Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
