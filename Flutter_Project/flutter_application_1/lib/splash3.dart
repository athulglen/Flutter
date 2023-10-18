import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: Splash3(),));
}
class Splash3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> Splash3State();
}

class Splash3State extends State {
  @override
  void initState() { //what will happen when the app or page ids first launched
  Timer(Duration(seconds: 5), (){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>AhLogin()));

  });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: Image.asset("assets/image/101.jpg"),
      ),
  );
  }
}