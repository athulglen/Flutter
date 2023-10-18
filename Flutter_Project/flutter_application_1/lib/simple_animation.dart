import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: SimplAnimation(),));
}
class SimplAnimation extends StatefulWidget{
  SimplAnimation({super.key});
  @override
  State<StatefulWidget> createState() => _SimplAnimationState();
}

class _SimplAnimationState extends State<SimplAnimation> with SingleTickerProviderStateMixin{
  Animation<double>? animation;
  AnimationController? animationController;

  @override
  void initState(){
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 1));
    animation = Tween<double>(begin: 12.0,end: 100.0).animate(animationController!)..addListener(() {
      setState(() {
        
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: ListView(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Text("Hello All",
          style: TextStyle(fontSize: animation?.value),),
        ),
        ElevatedButton(onPressed: () => zoomIn(), child: Text("increase txt size"))
      ],
    ),
   );
  }
  void zoomIn(){
    animationController!.forward();
  }
}