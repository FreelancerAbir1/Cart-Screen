import 'package:flutter/material.dart';

import 'component/body.dart';
import 'component/check_out_btn.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CheckOutButton(
          text: 'Go To Check Out',
          press: () {},
        ),
        appBar: buildAppBar(context, 'Cart'),
        body: const Body(),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context, String text) {
    return AppBar(
      title: Container(
        height: 50,
        width: 70,
        color: Colors.black,
        child: Center(
          child: Text(text,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
