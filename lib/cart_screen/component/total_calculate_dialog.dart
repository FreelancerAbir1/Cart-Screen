import 'package:flutter/material.dart';

class TotalCalculataDialog extends StatefulWidget {
  final String subtotalText, deliveryfreeText, totalText;
  final double subtotalPrice, deliveryfreePrice;

  const TotalCalculataDialog({
    Key? key,
    required this.subtotalText,
    required this.deliveryfreeText,
    required this.totalText,
    required this.deliveryfreePrice,
    required this.subtotalPrice,
  }) : super(key: key);

  @override
  State<TotalCalculataDialog> createState() => _TotalCalculataDialogState();
}

class _TotalCalculataDialogState extends State<TotalCalculataDialog> {
  double totalPrice = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      totalPrice = widget.subtotalPrice - widget.deliveryfreePrice;
    });
  }

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
                  widget.subtotalText,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.black87,
                      ),
                ),
                Text(
                  '\$${widget.subtotalPrice}',
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
                  widget.deliveryfreeText,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.black87,
                      ),
                ),
                Text(
                  '\$${widget.deliveryfreePrice}',
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
                        widget.totalText,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      Text(
                        '\$$totalPrice'.toString(),
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
