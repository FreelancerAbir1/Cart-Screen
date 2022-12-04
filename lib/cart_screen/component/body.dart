import 'package:flutter/material.dart';

import 'ItemCard.dart';
import 'add_more_btn.dart';

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
            totalPrice: 76.70,
            subtotalPrice: 97.0,
          ),
        ),
      ],
    );
  }
}

class TotalCalculataDialog extends StatelessWidget {
  final String subtotalText, deliveryfreeText, totalText;
  final double subtotalPrice, deliveryfreePrice, totalPrice;

  const TotalCalculataDialog({
    Key? key,
    required this.subtotalText,
    required this.deliveryfreeText,
    required this.totalText,
    required this.deliveryfreePrice,
    required this.totalPrice,
    required this.subtotalPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 4,
      width: size.width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10.0,
          right: 10.0,
          left: 10.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  subtotalText,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.black87,
                      ),
                ),
                Text(
                  '\$$subtotalPrice',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.black87,
                      ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  deliveryfreeText,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.black87,
                      ),
                ),
                Text(
                  '\$$deliveryfreePrice',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.black87,
                      ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              color: Colors.grey,
              child: Container(
                margin: const EdgeInsets.only(
                    bottom: 0, top: 05, right: 05, left: 05),
                height: 50,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        totalText,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      Text(
                        '\$$totalPrice',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
