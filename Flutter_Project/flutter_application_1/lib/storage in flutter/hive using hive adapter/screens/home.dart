import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HiveHome extends StatelessWidget {
  String? email;
  HiveHome({this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome $email"),),
      body: Center(
        child: Text("Success"),
      ),
    );
  }
}