//import 'dart:html';

import 'package:example6/widgets/app_column.dart';
import 'package:example6/widgets/icon_and_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {

  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 1.0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Bar kısmı
        Container(
          //color: Colors.grey,
          // color: Colors.redAccent,
          height: 280,
          child: PageView.builder(
              controller: pageController,
              itemCount: 1,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),

        SizedBox(height: 15),
        //Menu kısmı
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Text("Menu", style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          width: double.infinity,
          height: 40,
          child: ListView.builder(
            itemCount: MenuManager().menuManager.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 25,
                  width: 80,
                  // color: Colors.grey,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black26),
                    borderRadius: BorderRadius.circular(8),
                    // color:Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        //List of food and images

        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                /* decoration: BoxDecoration(
                    //border: Border(width: 1,color: Colors.black38),
                  ),*/
                margin:
                    EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
                child: Row(
                  children: [
                    //küçük kutuda image
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/image2.jpg"),
                        ),
                      ),
                    ),
                    //kucuk kutuda text kısmı
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: AppColumn(text: "CHICKEN ZINGER"),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 5, right: 5, top: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xFF69c5df),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/makarna2.jpg"),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 100,
            margin: EdgeInsets.only(left: 40, right: 40, bottom: 15),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.black26),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFe8e8e8),
                  // blurRadius: 10.0,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Arabiata Restaurant",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(width: 85),
                      Icon(Icons.location_on, color: Colors.yellowAccent),
                      Text(
                        "City",
                        style: TextStyle(color: Colors.black26),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(
                        "4,5",
                        style: TextStyle(color: Colors.black26),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Icon(
                        Icons.motorcycle_outlined,
                        color: Colors.yellow,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("30mins", style: TextStyle(color: Colors.black26)),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        "23 Miles away",
                        style: TextStyle(color: Colors.yellow),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MenuManager {
  final List<bool> menuManager = [
    true,
    false,
    false,
    false,
    false,
  ];
}

