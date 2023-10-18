import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: LotAni(),));
}
class LotAni extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottie"),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 1000,
            width: 20,
        child: Lottie.asset("assets/animation/animation_ll3huk01.json")),
        Lottie.network("https://lottie.host/182f8d43-1eea-4b64-b460-90e71a7a621c/I3yODhi8yN.json"),
        Lottie.network("https://lottie.host/51952c43-e08f-495f-938b-9ce4ee13c20f/beFNl3hMQZ.json")
      ]),
    );
  }

}