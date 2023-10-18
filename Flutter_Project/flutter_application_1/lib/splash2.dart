import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: Splash2()));
}
class Splash2 extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: const BoxDecoration(
        // gradient: LinearGradient(
        //   begin: Alignment.bottomLeft,end: Alignment.topRight,
        // colors: [
        //   Colors.green,
        //   Colors.white,
        //   Colors.green,
        // ])),
        image: DecorationImage(fit: BoxFit.cover,image: AssetImage("assets/image/101.jpg"))),
        child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icon/lion.png"),
          Text("My Application",
          style: TextStyle(
            fontSize: 30,
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic
            ),),
        ],
      ),
        ),
    ));
  }
}