import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: Stack1(),));
}
class Stack1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("StackEx"),),
      body: Stack(children:[
        Container(
          height: 300,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://i.pinimg.com/564x/d0/96/d3/d096d396bd0ee0e885ef46fab9e90c41.jpg"),)
          ),
        ),
        Positioned(
          left: 50,
          top: 80,
          child: Row(
          children: [
            FaIcon(FontAwesomeIcons.box,
            size: 40,
            color: Colors.white38,
            ),
            SizedBox(
              width: 8,
            ),
            Transform.rotate(angle: 90*pi/180,
            child: FaIcon(
              FontAwesomeIcons.wifi,
              size: 40,
              color: Colors.white38,
            )),
            SizedBox(width: 8,),

          ],
        )),
        Text("Fi",style: GoogleFonts.anton(
          color:Colors.white38,
          fontSize: 50,
          fontWeight: FontWeight.bold),
          )],
      ));
  }
}