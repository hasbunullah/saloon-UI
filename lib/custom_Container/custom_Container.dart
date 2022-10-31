import 'package:flutter/material.dart';

class custom_Container extends StatelessWidget {
  custom_Container({Key? key, required this.text,  this.image}) : super(key: key);

  String text;
  dynamic image;



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/New.webp'),
          fit: BoxFit.cover,
        ),
        color: Colors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 200,
      height: 130,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(image), height: 50,width: 50,),
            Text(text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 20,),
                Icon(Icons.star, color: Colors.yellow,size: 20),
                Icon(Icons.star, color: Colors.yellow,size: 20),
                Icon(Icons.star, color: Colors.white,size: 20),
                Icon(Icons.star, color: Colors.white,size: 20),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
