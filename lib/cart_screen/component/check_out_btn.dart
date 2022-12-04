import 'package:flutter/material.dart';

class CheckOutButton extends StatelessWidget {
  final GestureTapCallback press;
  final String text;
  const CheckOutButton({
    Key? key,
    required this.press,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      width: size.width,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        margin: const EdgeInsets.symmetric(horizontal: 58.0, vertical: 10.0),
        child: MaterialButton(
          onPressed: press,
          child: Text(
            text,
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
          ),
        ),
      ),
    );
  }
}
