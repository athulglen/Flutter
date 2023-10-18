import 'package:flutter/material.dart';

class SqfHome extends StatelessWidget {
  const SqfHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Center(
        child: Text("Succefully Login"),
      ),
    );
  }
}
