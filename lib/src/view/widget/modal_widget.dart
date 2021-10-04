import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';
import 'package:pokeapp/src/view/widget/button_widget.dart';

class ModalWidget extends StatelessWidget {
  final bool hasIcon;
  final IconData icon;
  final String title;
  final String description;
  final String textButton;
  final GestureTapCallback onPressedCallback;

  const ModalWidget({
      Key? key,
      this.icon = Icons.check_circle,
      this.hasIcon = true,
      required this.title,
      required this.description,
      required this.textButton,
      required this.onPressedCallback
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      height: 200,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            this.hasIcon ? Icon(
              Icons.check_circle,
              color: Colors.lightGreen,
              size: 30,
            ) : Text(""),
            SizedBox(height: 6),
            Text(
              this.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                height: 1.4,
                color: AppColors.secondary,
              ),
            ),
            Text(
              this.description,
              style: TextStyle(
                fontSize: 14,
                height: 1.4,
                color: AppColors.secondary.withOpacity(0.6),
              ),
            ),
            SizedBox(height: 14),
            ButtonWidget(
              hasIcon: false,
              textButton: this.textButton,
              backgroundColor: AppColors.primary,
              fontColor: Colors.white,
              iconSize: 16,
              fontSize: 14,
              onPressed: this.onPressedCallback,
            ),
          ],
        ),
      ),
    );
  }
}
