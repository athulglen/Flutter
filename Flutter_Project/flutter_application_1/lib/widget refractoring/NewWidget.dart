import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
final ImageProvider mimage;
final String name;
final String price;
 NewWidget({super.key,required this.mimage,required this.name,required this.price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: mimage,width: 100,height: 100,),
          Text(name),
          Text(price),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                  label: Text("WhishList")),
              SizedBox(
                width: 10,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                  label: Text("Buy now")),
            ],
          )
        ],
      ),
    );
  }
}