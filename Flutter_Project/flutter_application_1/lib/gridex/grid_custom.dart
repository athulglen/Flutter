import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: GridCustom()));
}
class GridCustom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grisd Custom"),
      ),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       childrenDelegate: SliverChildListDelegate(
        List.generate(10, (index) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image:DecorationImage(fit: BoxFit.fill,
                  image: NetworkImage("https://i.pinimg.com/564x/e1/9a/c8/e19ac8099f8b1494e51ea23e08493830.jpg")),
              )),
              Text("Item1"),
              Text("\$290"),
            ],
          ),
        ))
      )),
    );
  }

}