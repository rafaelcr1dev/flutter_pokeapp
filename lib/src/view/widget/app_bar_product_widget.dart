import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';
import 'package:pokeapp/src/core/app_images.dart';

class AppBarProductWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final bool hasBackButton;
  const AppBarProductWidget({Key? key, this.hasBackButton = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: Border(
        bottom: BorderSide(
          color: AppColors.primary,
          width: 0,
        ),
      ),
      shadowColor: AppColors.primary,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      backgroundColor: AppColors.primary,
      bottomOpacity: 0,
      elevation: 0.0,
      actions: [
        IconButton(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            onPressed: () => {})
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
