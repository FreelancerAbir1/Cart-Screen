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
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
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
                        'Subtotal',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.black87,
                            ),
                      ),
                      Text(
                        '\$20.30',
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
                        'Delivery Free',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.black87,
                            ),
                      ),
                      Text(
                        '\$10.20',
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
                              'Delivery Free',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                            Text(
                              '\$30.50',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
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
          ),
        ),
      ],
    );
  }
}
