import 'package:flutter/material.dart';
import 'package:green_app/screens/userDasboard/homePage/post.dart';
import 'package:green_app/screens/userDasboard/homePage/reomended_post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> containers = [
      Container(child: Post()),
      Container(
        child: RecomendedPost(),
      ),
    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: new IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Navigator.pushNamed(context, "/user-menu");
                },
              )),
          title: Text(
            'Green Pakistan',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Nursury Posts',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Recomended Flowers',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: containers,
        ),
      ),
    );
  }
}
