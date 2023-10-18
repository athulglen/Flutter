import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,//to remove the debug banner
    home:ListView2()));
}
// ignore: must_be_immutable
class ListView2 extends StatelessWidget{
  var name=[
    "Food 1",
    "Food 2",
    "Food 3",
    "Food 4",
    "Food 5",
    "Food 6",
    "Food 7",
    "Food 8",
    "Food 9",
    "Food 10",
  ];
  var image  = [
           "assets/image/apple.png",
"assets/image/bananas.png",
"assets/image/donut.png",
"assets/image/grapes.png",
"assets/image/hamburger.png",
"assets/image/mango.png",
"assets/image/orange.png",
"assets/image/pineapple.png",
"assets/image/pizza.png",
"assets/image/ramen.png",

  ];
  var price =[130,52,200,40,180,400,520,390,455,333];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("ListView2"),
        actions: [Icon(Icons.camera_alt_outlined),
        SizedBox(width: 15,),
        Icon(Icons.search),
        SizedBox(width: 15,),
        PopupMenuButton(itemBuilder: (context){
          return[
            PopupMenuItem(child: Text("Setting")),
            PopupMenuItem(child: Text("Starred Message")),
            PopupMenuItem(child: Text("New Group")),
            PopupMenuItem(child: Text("Archieved")),
          ];
        })
        ],
      ),
      body: ListView(
        children: List.generate(10,
         (index) => Card(child: ListTile(
          title: Text(name[index]),
          subtitle: Text("\$ ${price[index]}"),
          leading: CircleAvatar(
            backgroundImage: AssetImage(image[index]),
          ),
          trailing: Wrap(
            direction: Axis.vertical,
            children: [
            Icon(Icons.favorite_border),
            SizedBox(width: 15),
            Icon(Icons.shopping_cart_outlined),
          ],),
         )))),
    );
  }

}