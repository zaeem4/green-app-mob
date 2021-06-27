import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';
import 'package:green_app/screens/userDasboard/homePage/chose_option.dart';
import 'package:green_app/screens/userDasboard/homePage/post_card.dart';
import 'package:green_app/screens/userDasboard/imageDetails/icon_card.dart';
// import 'package:green_app/screens/userDasboard/imageDetails/icon_card.dart';
import 'package:green_app/services/api/post.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  bool _isPost;
  PostsDetails posts;
  var postDetails = [];
  String message = "";
  @override
  void initState() {
    _isPost = false;
    super.initState();
    posts = new PostsDetails();
    getAllPosts();
  }

  void getAllPosts() async {
    try {
      var allPosts = await posts.getAllPosts("all");
      setState(() {
        _isPost = true;
        postDetails = allPosts.allPosts;
      });
    } catch (e) {
      if (e.toString() == "Exception: no") {
        setState(() {
          message = "No Post to show";
          _isPost = true;
        });
      } else {
        setState(() {
          _isPost = true;
        });
        showAlertDialog(context, "Error ", e.toString());
        // Navigator.pushNamed(context, "/user-home");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final sidePadding = EdgeInsets.symmetric(horizontal: 15);
    return SafeArea(
      child: Scaffold(
          body: Container(
        alignment: Alignment.center,
        width: size.width,
        height: size.height,
        child: _isPost == true
            ? Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: sidePadding,
                          child: Divider(
                            height: 25,
                            color: kPrimaryColor,
                          )),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: FLOWERTYPES
                              .map((filter) => ChoiceOption(text: filter))
                              .toList(),
                        ),
                      ),
                      Padding(
                          padding: sidePadding,
                          child: Divider(
                            height: 25,
                            color: kPrimaryColor,
                          )),
                      Expanded(
                        child: Padding(
                          padding: sidePadding,
                          child: new ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: postDetails.length,
                              itemBuilder: (context, index) {
                                return PostCard(
                                  postDetails: postDetails[index],
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 40, right: 25, top: 15, bottom: 20),
                    child: Text(
                      message.toUpperCase(),
                      style: TextStyle(
                        fontSize: 17,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              )
            : CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(kPrimaryColor),
              ),
      )),
    );
  }
}
