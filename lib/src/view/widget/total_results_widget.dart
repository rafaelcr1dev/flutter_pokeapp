import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';

class TotalResultsWidget extends StatefulWidget {
  final int total;

  const TotalResultsWidget({Key? key, required this.total}) : super(key: key);

  @override
  _TotalResultsWidgetState createState() => _TotalResultsWidgetState();
}

class _TotalResultsWidgetState extends State<TotalResultsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              "Foram encontrado(s) ${widget.total} resultado(s)",
              style: TextStyle(
                fontSize: 14,
                color: AppColors.secondary,
              ),
            )
          ],
        )
      ],
    );
  }
}
