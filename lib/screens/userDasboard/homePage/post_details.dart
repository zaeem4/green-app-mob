import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/userDasboard/homePage/border_icon.dart';
import 'package:green_app/screens/userDasboard/homePage/option_button.dart';

class PostDetails extends StatelessWidget {
  final dynamic postData;

  const PostDetails({Key key, @required this.postData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // final ThemeData themeData = Theme.of(context);
    final double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          leading: Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: new IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Navigator.pushNamed(context, "/user-menu");
                },
              )),
          title: Text('Green Pakistan'),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: new IconButton(
                iconSize: 30,
                icon: Icon(Icons.arrow_back_sharp),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.network(server + postData.image),
                        Positioned(
                          width: size.width,
                          top: padding,
                          child: Padding(
                            padding: sidePadding,
                          ),
                        ),
                      ],
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BorderIcon(
                            child: Text(
                              postData.time,
                              //style: themeData.textTheme.headline5,
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 15),
                          )
                        ],
                      ),
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Text(
                        postData.flowerType.toUpperCase(),
                        //style: themeData.textTheme.headline4,
                      ),
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Text(
                        postData.discription, textAlign: TextAlign.justify,
                        //style: themeData.textTheme.bodyText2,
                      ),
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Text(
                        "By: " +
                            postData.user.name +
                            ", " +
                            postData.user.nurseryDetail.city,
                        //style: themeData.textTheme.headline4,
                      ),
                    ),
                    addVerticalSpace(100),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OptionButton(
                      text: "Whatsapp",
                      icon: Icons.message,
                      width: size.width * 0.5,
                      postData: postData,
                    ),
                    // addHorizontalSpace(10),
                    // OptionButton(
                    //   text: "Call",
                    //   icon: Icons.call,
                    //   width: size.width * 0.35,
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget addVerticalSpace(double height) {
  return SizedBox(height: height);
}

Widget addHorizontalSpace(double width) {
  return SizedBox(width: width);
}
