import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    home: SplashPage(),
  ));
}
class SplashPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Splash Page")),
    );
  }
}