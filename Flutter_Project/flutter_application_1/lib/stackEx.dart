import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: StackEx(),));
}
class StackEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StackEx"),),
      body: Stack(children: [
        Container(
          height: 250,
          width: 250,
          color: Colors.red,
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.orange,
        ),
        Container(
          height: 150,
          width: 150,
          color: Colors.blue,
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.green,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.yellow,
        ),
        Positioned(
          left: 20,
          right: 20,
          child: Container(
            height: 50,
            width: 50,
            color: Colors.yellow,
          ))
      ]),
    );
  }

}