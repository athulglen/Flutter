import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: ListView_with_builder(),));
}
class ListView_with_builder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("Listview Builder")),
    body: ListView.builder(itemBuilder: (context, index) {
      return Card(
        child: Center(
          child: Image.asset("assets/image/ramen.png"),
        ),
      );
    },),
   );
  }

}