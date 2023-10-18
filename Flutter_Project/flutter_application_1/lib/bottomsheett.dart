import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: BottomSheeett(),));
}
class BottomSheeett extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet with image on top"),
      ),
      body: Center(
        child: GestureDetector(
          onLongPress: () => showSheet(context), child: Image.asset("assets/image/101.jpg")),
      ),
    );
  }
  void showSheet(BuildContext context){
    showModalBottomSheet(context: context, builder:(context) {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),
              title: Text("Whatsapp"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
              title: Text("FaceBook"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.message,color: Colors.red,),
              title: Text("Message"),
            ),
          ],
        ),
      );
    });
  }
}