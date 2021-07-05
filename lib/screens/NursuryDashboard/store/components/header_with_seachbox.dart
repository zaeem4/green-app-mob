import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
    @required this.name,
  }) : super(key: key);

  final Size size;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding * 3,
              right: kDefaultPadding,
              bottom: kDefaultPadding - 20,
            ),
            height: size.height * 0.2 - 90,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                // IconButton(
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                //   icon: Icon(
                //     Icons.arrow_back,
                //     color: kBackgroundColor,
                //   ),
                // ),
                Text(
                  'Welcome to $name Garden',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          //   child: Container(
          //     alignment: Alignment.center,
          //     margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          //     padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          //     height: 54,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(20),
          //       boxShadow: [
          //         BoxShadow(
          //           offset: Offset(0, 10),
          //           blurRadius: 50,
          //           color: kPrimaryColor.withOpacity(0.23),
          //         ),
          //       ],
          //     ),
          //     child: Row(
          //       children: <Widget>[
          //         Expanded(
          //           child: TextField(
          //             onChanged: (value) {},
          //             decoration: InputDecoration(
          //               hintText: "Search",
          //               hintStyle: TextStyle(
          //                 color: kPrimaryColor.withOpacity(0.5),
          //               ),
          //               enabledBorder: InputBorder.none,
          //               focusedBorder: InputBorder.none,
          //               // surffix isn't working properly  with SVG
          //               // thats why we use row
          //               // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
          //             ),
          //           ),
          //         ),
          //         SvgPicture.asset("assets/icons/search.svg"),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
