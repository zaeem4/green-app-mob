import 'package:flutter/material.dart';

class TipsAndTricks extends StatefulWidget {
  @override
  _TipsAndTricksState createState() => _TipsAndTricksState();
}

class _TipsAndTricksState extends State<TipsAndTricks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
        ),
        title: new Text(
          "Fresh Flower Care Tips",
          style: new TextStyle(
            color: Colors.green,
            fontSize: 23,
            fontFamily: 'Georgia',
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Image.asset(
                "assets/images/tipstricks/f1.jpg",
                height: 230.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Text(
              "The gift of beautiful flowers is the most popular choice for festivals or special occasions. Whether it is a single flower or a bouquet, their bright blooms bring happiness for memorable moments and it is appreciated by everyone. Sadly, fresh flowers don't last forever.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f2.jpg',
                height: 230.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Text(
              "Here are some useful tips that keep your flowers fresh longer.Let's take roses as an example to go through the plant care routine step by step.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Step 1: Trim some leaves: ",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            Text(
              "Remove excessive and damaged leaves before inserting the flowers into vase to reduce unnecessary water evaporation. Use scissors to prune the leaves one by one. Enusre that there are no leaves at the part of the branches, to avoid rotting and polluting the water in the vase.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f3.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Step 2: Prune the stems:",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Sharp throns on the stem can be removed carefully with a thorn stripper.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f4.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Scissors can also be used to cut off sharp tips. Just clamp them and stroke down to remove the thorns.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f5.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Use scissors to prune the plant roots at a 30-45 angle to increase the water absorption area. Make clean cut by using sharp scissors for pruning to minimize the damage to the plant and prolong its vase life.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f6.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "You can also make a cross-cut to increase the water absorption area, especially for the woody cut flowers such as rose and lilac.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f7.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Step 3: Sort the flower petals:",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Remove the damaged petals from the outer layer of the flower to maintain the overall appearance. Buds that are too small may not bloom and can be removed to optimize nutrient consumption.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f8.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Step 4: Add some flower preservative:",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Fill the clean vase with clean water up to 2/3 of the vase height. Add it according to the recommended dosage stated on the package and stir it well.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f9.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "You can also add a little bit of sugar and drops of lemon juice or vinger. Sugar acts as additional flower food while lemon juice or vinger acts as antibacterial agents.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Step 5: Place the bouquets appropriately:",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Arrange the flowers in the vase in order and put th vase in a cool environment with filtered light. Direct sunlight should be avoided. Avoid placing the vase at the air outlets of air conditioners or fans because the wind cause flowers to wither. Also avoid placing them with fruits beacuse it produces ethylene gas which causes aging of flowers.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f10.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Step 6: Regularly change the water and cut the stems:",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Change the water once every 1-2 days, or 2-3 days if the flower preservative is used. Whenver changing the water, clean the roots with clean water to keep them clean and free of rot.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f11.jpg',
                height: 100.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "You can also make them as dry flowers.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Before the flowers completely withered,we can tie the stems with straw ropes, and suspend them upside down in a ventilated and dry environment until they become completely dry.",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f12.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f13.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Detail 1: Remove the anthers",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f14.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Detail 2: Cut leaves carefully",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f15.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f16.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Detail 3: Adjust their direction",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f17.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f18.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Detail 4: Support the stems",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f19.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f20.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Detail 5: Reviving wilted blooms",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f21.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f22.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f23.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Detail 6: Less water fresher flowers",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f24.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Detail 7: Care for flowers with tubes",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f25.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f26.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Detail 8: Care for aquatic flower",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f27.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f28.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Detail 9: Care for woody leaves",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f29.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image.asset(
                'assets/images/tipstricks/f30.jpg',
                height: 200.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
