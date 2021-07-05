import 'package:flutter/material.dart';

class StockScreen extends StatefulWidget {
  const StockScreen({Key key}) : super(key: key);

  @override
  _StockScreenState createState() => _StockScreenState();
}

class _StockScreenState extends State<StockScreen> {
  // List<StockList>data=[
  //   StockList(img: 'assets/images/rose_image_1.png',name: 'Rose',icon: Icons.check,ammount: '55'),
  //   StockList(img: 'assets/images/rose_image_1.png',name: 'Rose',icon: Icons.check,ammount: '5'),
  //   StockList(img: 'assets/images/roseimg.png',name: 'Red Rose',icon: Icons.warning_amber_outlined,ammount: '2'),
  // StockList(img: 'assets/images/photo-1551945326-df678a97c3af.jpg',name: 'Sun Flower',icon: Icons.clear,ammount: '0'),
  //   StockList(img: 'assets/images/rose_image_1.png',name: 'Rose',icon: Icons.check,ammount: '5'),
  //   StockList(img: 'assets/images/photo-1551945326-df678a97c3af.jpg',name: 'Sun Flower',icon: Icons.clear,ammount: '0'),
  //   StockList(img: 'assets/images/rose_image_1.png',name: 'Rose',icon: Icons.check,ammount: '5'),
  //   StockList(img: 'assets/images/roseimg.png',name: 'Red Rose',icon: Icons.warning_amber_outlined,ammount: '1'),
  //   StockList(img: 'assets/images/rose_image_1.png',name: 'Rose',icon: Icons.check,ammount: '15'),
  // StockList(img: 'assets/images/photo-1551945326-df678a97c3af.jpg',name: 'Sun Flower',icon: Icons.clear,ammount: '0'),
  //   StockList(img: 'assets/images/rose_image_1.png',name: 'Rose',icon: Icons.check,ammount: '35'),
  //   StockList(img: 'assets/images/roseimg.png',name: 'Red Rose',icon: Icons.warning_amber_outlined,ammount: '4'),
  //   StockList(img: 'assets/images/rose_image_1.png',name: 'Rose',icon: Icons.check,ammount: '5'),
  // StockList(img: 'assets/images/photo-1551945326-df678a97c3af.jpg',name: 'Sun Flower',icon: Icons.clear,ammount: '0'),
  //   StockList(img: 'assets/images/rose_image_1.png',name: 'Rose',icon: Icons.check,ammount: '15'),
  // ];
  @override
  Widget build(BuildContext context) {
    //   Size size = MediaQuery.of(context).size;
    //   return Scaffold(
    //     appBar: AppBar(
    //       leading: IconButton(
    //         icon: Icon(
    //           Icons.arrow_back,
    //           color: Colors.blueGrey[200],
    //         ),
    //         onPressed: () {
    //           Navigator.pushReplacement(context,
    //               MaterialPageRoute(builder: (context) => DashboardSecreen()));
    //         },
    //       ),
    //       title: Text(
    //         'Current Stock',
    //         style: TextStyle(
    //           fontWeight: FontWeight.bold,
    //         ),
    //       ),
    //     ),
    //     body: Stack(children: [
    //       Column(
    //         children: [
    //           Padding(
    //             padding: const EdgeInsets.only(top: 20.0),
    //             child: Container(
    //                 height: 50,
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.all(Radius.elliptical(3, 5)),
    //                   color: Colors.grey[200],
    //                 ),
    //                 child: Padding(
    //                   padding: const EdgeInsets.all(10.0),
    //                   child: Text(
    //                     'your current stock List!',
    //                     style: TextStyle(fontSize: 22, color: Colors.black87),
    //                   ),
    //                 )),
    //           ),

//   //           //  Divider(thickness: 1),

//   //           Padding(
//   //             padding: const EdgeInsets.only(
//   //                 left: 10, right: 40, top: 30, bottom: 10),
//   //             child: Container(
//   //               child: Row(
//   //                 children: [
//   //                   Padding(
//   //                     padding: const EdgeInsets.only(left: 8.0),
//   //                     child: Text(
//   //                       'Flower Type',
//   //                       style: TextStyle(fontSize: 14, color: Colors.black38),
//   //                     ),
//   //                   ),
//   //                   Spacer(),
//   //                   Padding(
//   //                     padding: const EdgeInsets.only(right: 0.0),
//   //                     child: Text(
//   //                       'Availible ',
//   //                       style: TextStyle(fontSize: 14, color: Colors.black38),
//   //                     ),
//   //                   ),
//   //                   SizedBox(width: 5),
//   //                 ],
//   //               ),
//   //             ),
//   //           ),

//   //           Divider(thickness: 2),
//   //         ],
//   //       ),
//   //       Padding(
//   //         padding: const EdgeInsets.only(top: 140.0),
//   //         child: ListView.builder(
//   //             itemCount: data.length,
//   //             itemBuilder: (context, index) {
//   //               return GestureDetector(
//   //                   onTap: () {},
//   //                   child: ListTile(
//   //                       title: Column(
//   //                     children: [
//   //                       Padding(
//   //                         padding: const EdgeInsets.only(top: 10.0),
//   //                         child: Container(
//   //                           height: 50,
//   //                           child: Row(
//   //                             children: [
//   //                               Container(
//   //                                 width: size.width * 0.15,
//   //                                 height: size.height * 0.5,
//   //                                 decoration: BoxDecoration(
//   //                                     border: Border.all(
//   //                                         width: 1,
//   //                                         color: Theme.of(context)
//   //                                             .scaffoldBackgroundColor),
//   //                                     image: DecorationImage(
//   //                                       fit: BoxFit.cover,
//   //                                       image: AssetImage(
//   //                                         data[index].img,
//   //                                       ),
//   //                                     )),
//   //                               ),
//   //                               SizedBox(width: 5),
//   //                               Text(
//   //                                 data[index].name,
//   //                                 style: TextStyle(),
//   //                               ),
//   //                               data[index].icon == Icons.check
//   //                                   ? Icon(
//   //                                       data[index].icon,
//   //                                       color: Colors.green,
//   //                                       size: 20,
//   //                                     )
//   //                                   : data[index].icon ==
//   //                                           Icons.warning_amber_outlined
//   //                                       ? Icon(
//   //                                           data[index].icon,
//   //                                           color: Colors.yellow[800],
//   //                                           size: 20,
//   //                                         )
//   //                                       : Icon(
//   //                                           data[index].icon,
//   //                                           color: Colors.red,
//   //                                           size: 20,
//   //                                         ),
//   //                               Spacer(),
//   //                               Padding(
//   //                                 padding: const EdgeInsets.only(right: 50.0),
//   //                                 child: Text(data[index].ammount),
//   //                               )
//   //                             ],
//   //                           ),
//   //                         ),
//   //                       ),
//   //                       Divider(thickness: 1),
//   //                     ],
//   //                   )));
//   //             }),
//   //       )
//   //     ]),
//   //   );
  }
}

class StockList {
  final String img, name, ammount;
  final IconData icon;

  const StockList({
    this.img,
    this.name,
    this.ammount,
    this.icon,
  });
}
