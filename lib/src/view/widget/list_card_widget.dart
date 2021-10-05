import 'package:flutter/material.dart';
import 'package:pokeapp/src/view/widget/card_widget.dart';

class ListCardWidget extends StatefulWidget {
  const ListCardWidget({ Key? key }) : super(key: key);

  @override
  _ListCardWidgerState createState() => _ListCardWidgerState();
}

class _ListCardWidgerState extends State<ListCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: GridView.count(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              crossAxisCount: 2,
              children: [
                CardWidget(),
                CardWidget(),
                CardWidget(),
                CardWidget(),
                CardWidget(),
                CardWidget(),
                CardWidget(),
                CardWidget(),
                CardWidget(),
                CardWidget(),
                CardWidget()
              ]
          ),
        );
  }
}