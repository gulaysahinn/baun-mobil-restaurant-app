import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,style: TextStyle(fontSize: 18),),
            Icon(Icons.favorite,color: Colors.black38,),
          ],
        ),
        SizedBox(height: 10,),
        Text("Spicy & crispy with garic",style: TextStyle(color: Colors.black38),),
        Text("59,99 EGP",style: TextStyle(color: Colors.black38,decoration: TextDecoration.lineThrough),),
        SizedBox(height: 10,),
        Row(
          children: [
            Text("49,99 EGP",style: TextStyle(color: Colors.yellow,fontSize: 14),),
            SizedBox(width: 10,),
            Icon(Icons.star,color: Colors.yellow,),
            Text("4,5",style: TextStyle(color: Colors.black26
            ),),
            SizedBox(width: 10,),
            Icon(Icons.local_fire_department,color: Colors.yellow,),
            SizedBox(width: 10,),
            Text("199cal",style: TextStyle(color: Colors.black38),),
            // SizedBox(height: 5,),
          ],
        ),
      ],
    );
  }
}
