import 'package:flutter/material.dart';

class ProductItemCard extends StatefulWidget {
  final String drinkName;
  final double price;
  final String img;

  const ProductItemCard({
    super.key,
    required this.drinkName,
    required this.price,
    required this.img,
  });

  @override
  State<ProductItemCard> createState() => _ProductItemCardState();
}

class _ProductItemCardState extends State<ProductItemCard> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dismissible(
      onDismissed: (value) {},
      key: const Key('1'),
      child: Padding(
        padding: const EdgeInsets.all(08.0),
        child: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.network(
                    widget.img,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.drinkName,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      '\$${widget.price} ',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          count--;
                        });
                      },
                      icon: const Icon(
                        Icons.remove_circle,
                      ),
                    ),
                    Text(
                      '1',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    IconButton(
                      onPressed: () {
                        count++;
                      },
                      icon: const Icon(
                        Icons.add_circle,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
