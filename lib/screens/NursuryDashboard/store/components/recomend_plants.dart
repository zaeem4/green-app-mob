import 'package:flutter/material.dart';
import 'package:green_app/constants.dart';

class RecomendsPlants extends StatelessWidget {
  final dynamic postsData;
  const RecomendsPlants({Key key, @required this.postsData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Flexible(
        child: new ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemCount: postsData.length,
            itemBuilder: (context, index) {
              return RecomendPlantCard(
                image: postsData[index].image,
                flowerType: postsData[index].flowerType,
                quantity: postsData[index].quantity,
              );
            }),
        // RecomendPlantCard(
        //   image: "assets/images/tulip_image_2.png",
        //   title: "Tulip",
        //   quantity: "Avilable",
        //   price: 440,
        //   press: () {},
        // ),
        // RecomendPlantCard(
        //   image: "assets/images/daisy_image_3.png",
        //   title: "Daisy",
        //   quantity: "",
        //   price: 440,
        //   press: () {},
        // ),
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key,
    this.image,
    this.flowerType,
    this.quantity,
  }) : super(key: key);

  final String image, flowerType, quantity;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        right: kDefaultPadding,
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.5,
      child: Column(
        children: <Widget>[
          Image.network(server + image),
          GestureDetector(
            // onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Flower Name : $flowerType\n",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        TextSpan(
                          text: "Quantity: $quantity",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Spacer(),
                  // Text(
                  //   '$nursery, $city',
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .button
                  //       .copyWith(color: kPrimaryColor),
                  // )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
