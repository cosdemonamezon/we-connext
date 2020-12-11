import 'package:condotoo/Model/Restaurant/food.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:condotoo/style/theme.dart' as Style;

class OrderAgain extends StatelessWidget {
  final foodItems = <Food>[
    Food(
      title: "Italian Pasta",
      price: "25.00",
      img: 'assets/images/food3.jpg',
      rating: "4.2",
    ),
    Food(
      title: "Pasta with Ham",
      price: "20.00",
      img: 'assets/images/food2.jpg',
      rating: "4.2",
    ),
    Food(
      title: "Black Bee",
      price: "13.00",
      img: 'assets/images/food4.jpg',
      rating: "4.7",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: foodItems.length * 100.0,
      child: ListView(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        children: foodItems.map<Widget>((Food food) {
          return Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey[300], width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                        image: AssetImage(food.img),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: MediaQuery.of(context).size.width - 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              food.title,
                              style: TextStyle(color: Colors.black, fontSize: 14.0),
                            ),
                            SizedBox(height: 5.0,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      food.rating,
                                      style: TextStyle(fontSize: 9.0, color: Colors.black38),
                                    ),
                                    SizedBox(width: 5.0,),
                                    Icon(
                                      EvaIcons.star,
                                      color: Style.Colors.mainColor,
                                      size: 8.0,
                                    ),
                                    Icon(
                                      EvaIcons.star,
                                      color: Style.Colors.mainColor,
                                      size: 8.0,
                                    ),
                                    Icon(
                                      EvaIcons.star,
                                      color: Style.Colors.mainColor,
                                      size: 8.0,
                                    ),
                                    Icon(
                                      EvaIcons.star,
                                      color: Style.Colors.mainColor,
                                      size: 8.0,
                                    ),
                                    Icon(
                                      EvaIcons.star,
                                      color: Colors.black38,
                                      size: 8.0,
                                    ),
                                    SizedBox(width: 5.0,),
                                    Text(
                                      "(200)",
                                      style: TextStyle(fontSize: 9.0, color: Colors.black38),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "\$" + food.price,
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      ).toList()),
    );
  }
}