import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: Refactoring3(),));
}
class Refactoring3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Refraactoring"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       itemBuilder: (context, index) {
         return MyRefractoringWidget(
          bgcolor: Colors.blueAccent,
          rimage: Image.asset("assets/image/ramen.png"),
         label: Text("Ramen",style: GoogleFonts.dancingScript(
          fontSize: 30,color: Colors.yellow),
         ),
         onClick: () {},
         );
       }),
    );
  }
}
// ignore: must_be_immutable
class MyRefractoringWidget extends StatelessWidget{
  final Color? bgcolor;
  final Image? rimage;
  VoidCallback? onClick;
  Widget? label;
  Widget? ricon;

  MyRefractoringWidget({
    this.bgcolor,
    required this.rimage,
    this.label,
    this.onClick,
    this.ricon
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Center(
        child: ListTile(
          title: label,
          leading: rimage,
          onTap: onClick,
          trailing: ricon,
        ),
      ),
    );
  }
}