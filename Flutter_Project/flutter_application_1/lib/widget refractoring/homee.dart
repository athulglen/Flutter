import 'package:flutter/material.dart';


import 'NewWidget.dart';

void main() {
  runApp(MaterialApp(
    home: RefraHome(),
  ));
}

// ignore: must_be_immutable
class RefraHome extends StatelessWidget {
  var name = [
    "Food 1",
    "Food 2",
    "Food 3",
    "Food 4",
    "Food 5",
  ];
  var image = [
    
    "assets/image/apple.png",
    "assets/image/bananas.png",
    "assets/image/pizza.png",
    "assets/image/pineapple.png",
    "assets/image/ramen.png"
  ];
  var prices = [130, 200, 100, 30, 470];
  RefraHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Using Refactoring"),
      ),
      body: GridView.builder(
          itemCount: 5,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return NewWidget(
              mimage: AssetImage(image[index]),
              name: name[index],
              price:'\$${prices[index]}',
            );
          }),
    );
  }
}