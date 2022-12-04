
import 'package:flutter/material.dart';

class AddMoreItemBtn extends StatelessWidget {
  const AddMoreItemBtn({
    Key? key,
    required this.text,
    required this.press,
    required this.btnTex,
  }) : super(key: key);
  final String text, btnTex;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const SizedBox(
                width: 10,
              ),
              MaterialButton(
                color: Colors.black,
                onPressed: press,
                child: Text(
                  btnTex,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
