import 'package:flutter/material.dart';
import 'package:pokeapp/src/core/app_colors.dart';
import 'package:pokeapp/src/view/screen/catalog/catalog_page.dart';
import 'package:pokeapp/src/view/widget/app_bar_widget.dart';
import 'package:pokeapp/src/view/widget/button_widget.dart';
import 'package:pokeapp/src/view/widget/item_widget.dart';
import 'package:pokeapp/src/view/widget/modal_widget.dart';
import 'package:pokeapp/src/view/widget/title_page_widget.dart';
import 'package:pokeapp/src/view/widget/total_results_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 10,
        ),
        child: Column(
          children: <Widget>[
            TitlePageWidget(titleText: "Carrinho"),
            SizedBox(height: 4),
            TotalResultsWidget(total: 20),
            SizedBox(height: 14),
            Expanded(
                child: ListView.builder(
              itemCount: 20,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ItemWidget(item: "");
              },
            )),
            SizedBox(height: 14),
            ButtonWidget(
              textButton: "Finalizar pedido",
              icon: Icons.shopping_cart,
              backgroundColor: AppColors.primary,
              fontColor: Colors.white,
              iconSize: 16,
              fontSize: 14,
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return ModalWidget(
                      title: "Pedido finalizado",
                      description:
                          "Obrigado pela compra, o número do seu pedido é #010101",
                      textButton: "Ir para a página inicial",
                      onPressedCallback: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CatalogPage(),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
