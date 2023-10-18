import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: Expanted(),));
}
class Expanted extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("Expanded"),
    ),
    body: Column(
      children: [
        Expanded(child: Image.network("https://i.pinimg.com/564x/65/a5/34/65a5345111634715d4cd50074cf3973a.jpg"),),
        Expanded(child: Image.network("https://i.pinimg.com/564x/65/a5/34/65a5345111634715d4cd50074cf3973a.jpg"),),
        Expanded(child: Image.network("https://i.pinimg.com/564x/65/a5/34/65a5345111634715d4cd50074cf3973a.jpg"),),
        Expanded(child: Image.network("https://i.pinimg.com/564x/65/a5/34/65a5345111634715d4cd50074cf3973a.jpg"),)
      ],
    ),
   );
  }

}