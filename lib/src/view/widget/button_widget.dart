import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';

class ButtonWidget extends StatelessWidget {
  final String textButton;
  final double fontSize;
  final double iconSize;
  final IconData icon;
  final Color backgroundColor;
  final Color fontColor;

  const ButtonWidget({
    Key? key, 
    required this.textButton,
    this.fontSize = 14,
    this.iconSize = 20,
    required this.icon,
    this.backgroundColor = Colors.transparent,
    required this.fontColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
          minimumSize: Size(double.infinity, 30),
          padding: EdgeInsets.symmetric(vertical: 14),
          side: BorderSide(
            width: 1.0, 
            color: this.fontColor,
          ),
          backgroundColor: this.backgroundColor,
      ),
      icon: Icon(
        Icons.filter,
        color: this.fontColor,
        size: this.iconSize,
      ),
      label: Text(
        this.textButton,
        style: TextStyle(
          color: this.fontColor, 
          fontSize: this.fontSize,
        ),
      ),
      onPressed: () {
        print('Received click');
      },
    );
  }
}
