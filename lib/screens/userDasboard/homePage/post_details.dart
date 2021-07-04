import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/userDasboard/homePage/border_icon.dart';
import 'package:green_app/screens/userDasboard/homePage/option_button.dart';
import 'package:green_app/screens/userDasboard/menu/user_menu.dart';

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
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => UserMenu()));
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                              postData.user.name,
                               //style: themeData.textTheme.headline5,
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                          ),
                          BorderIcon(
                            child: Text(
                              "20 Hours ago",
                             // style: themeData.textTheme.headline5,
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                          )
                        ],
                      ),
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Row(
                        children: [
                          Text(
                          postData.flowerType,
                           style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                             fontSize: 24,
                           )
                          ),
                          SizedBox(width: 8,),
                          Text(
                              'Information:',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              )
                          ),
                        ],
                      ),
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: EdgeInsets.only(left:50,right: 40),
                      child: Text(
                        postData.discription, textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        //style: themeData.textTheme.bodyText2,
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
                      text: "WhatsApp",
                      icon: Icons.message,
                      width: size.width * 0.45,
                    ),
                    addHorizontalSpace(10),

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
