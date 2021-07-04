import 'package:flutter/material.dart';
import 'package:green_app/screens/userDasboard/homePage/Recomend/Recomendation.dart';
import 'package:green_app/screens/userDasboard/homePage/post.dart';
class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> containers = [
      Container(
          child:Expanded(
            child: Post(),
          )
      ),
      Container(
        child:RecomendSecreen(),
      ),

    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('Nursury Posts',style: TextStyle(
                  fontSize: 18,
                ),),
              ),
              Tab(
                child: Text('Recomended Flowers',style: TextStyle(
                  fontSize: 18,
                ),),
              ),
            ],
          ),
        ),
        body: TabBarView(children: containers,),

      ),
    );
  }
}
