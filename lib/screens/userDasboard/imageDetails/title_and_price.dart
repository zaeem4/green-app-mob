import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
    this.title,
    this.address,
    this.price,
  }) : super(key: key);

  final String title, address;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
                ),
                // TextSpan(
                //   text: address,
                //   style: TextStyle(
                //     fontSize: 20,
                //     color: kPrimaryColor,
                //     fontWeight: FontWeight.w300,
                //   ),
                // ),
              ],
            ),
          ),
          Spacer(),
          // Text(
          //   price.toString(),
          //   style: Theme.of(context)
          //       .textTheme
          //       .headline5
          //       .copyWith(color: kPrimaryColor),
          // )
        ],
      ),
    );
  }
}
