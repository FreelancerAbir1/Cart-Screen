import 'package:flutter/material.dart';

import 'ItemCard.dart';
import 'add_more_btn.dart';
import 'total_calculate_dialog.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AddMoreItemBtn(
                  text: 'Add \$${size.width} for free Delivery',
                  btnTex: 'Add more Items',
                  press: () {},
                ),
                const ProductItemCard(
                  drinkName: 'Soft Drink #1',
                  img:
                      'https://cdn.pixabay.com/photo/2022/11/29/15/18/sunset-7624720_960_720.jpg',
                  price: 18.0,
                ),
                const ProductItemCard(
                  drinkName: 'Soft Drink #2',
                  img:
                      'https://cdn.pixabay.com/photo/2021/01/01/15/31/sushi-balls-5878892_960_720.jpg',
                  price: 55.0,
                ),
                const ProductItemCard(
                  drinkName: 'Soft Drink #3',
                  img:
                      'https://cdn.pixabay.com/photo/2022/10/10/07/58/mountain-7511116_960_720.jpg',
                  price: 24.0,
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: TotalCalculataDialog(
            subtotalText: 'SubTotal',
            deliveryfreeText: 'Delivery Free',
            totalText: 'Total',
            deliveryfreePrice: 20.30,
            subtotalPrice: 97.0,
          ),
        ),
      ],
    );
  }
}
