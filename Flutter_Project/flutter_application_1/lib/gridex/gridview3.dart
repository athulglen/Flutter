import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: GridView3()));
}
class GridView3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("GridView Builder"),
      ),
      body: GridView.count(crossAxisCount:3,
      children:List.generate(
        15, 
        (index) => Card(
          color: Colors.green,
        child: Center(
          child: Text("Hello"),
        ),
      )) ),
    );
  }
}