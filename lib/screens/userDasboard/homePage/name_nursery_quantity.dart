import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';

class NameNurseryQuantity extends StatelessWidget {
  const NameNurseryQuantity({
    Key key,
    this.name,
    this.quantity,
    this.nursery,
  }) : super(key: key);

  final String name, quantity, nursery;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 1.5, vertical: kDefaultPadding * .3),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$name\n",
                  style: TextStyle(
                    fontSize: 35,
                    color: kBackgroundColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                TextSpan(
                  text: "By $nursery\n",
                  style: TextStyle(
                    fontSize: 20,
                    color: kBackgroundColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            "Quantity: $quantity\n",
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kBackgroundColor),
          )
        ],
      ),
    );
  }
}
