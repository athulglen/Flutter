import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: Silversss(),));
}
class Silversss extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: SafeArea(child: CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          pinned: false,
          title: Text("Silver Appbar"),
          bottom: AppBar(
            elevation: 0,
            title: Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(hintText: "Search here",
                prefixIcon: Icon(Icons.search_rounded),
                suffixIcon: Icon(Icons.camera_alt_sharp)),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: 
          SliverChildBuilderDelegate((context, index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40)
          ),
          height: 30,
          child: Text("Data$index"),
        ),
        childCount: 10
        )),
        SliverGrid(delegate: SliverChildBuilderDelegate((context, index) => Card(
          child: Center(
            child: Icon(Icons.ac_unit_outlined),
          ),
        )), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2))
      ],
    )),
   );
  }

}