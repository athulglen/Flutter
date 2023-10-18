import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: ListView_Custom()));
}
class ListView_Custom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("Listview Custom"),
    ),
    body: ListView.custom(
      childrenDelegate: SliverChildListDelegate(
        List.generate(10, (index) => Text("Hello"))
    )),
   );
  }

}