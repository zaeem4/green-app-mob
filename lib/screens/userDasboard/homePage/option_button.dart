import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;
  final dynamic postData;

  const OptionButton(
      {Key key,
      @required this.text,
      @required this.icon,
      @required this.width,
      @required this.postData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: FlatButton(
          color: COLOR_DARK_BLUE,
          splashColor: Colors.white.withAlpha(55),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          onPressed: () {
            FlutterOpenWhatsapp.sendSingleMessage(
                postData.user.nurseryDetail.phoneNumber,
                "Hello " +
                    postData.user.name +
                    " i want to buy: " +
                    postData.flowerType +
                    ", Posted: " +
                    postData.time);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: COLOR_WHITE,
              ),
              SizedBox(width: 10),
              Text(
                text,
                style: TextStyle(color: COLOR_WHITE),
              )
            ],
          )),
    );
  }
}
