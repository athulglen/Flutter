import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: CSlider(),));
}
class CSlider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(items: [
        Container(decoration:BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image:NetworkImage("https://images.unsplash.com/photo-1684851430976-b455e98e96a6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80")))),
         Container(decoration:BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image:NetworkImage("https://images.unsplash.com/photo-1682685797741-f0213d24418c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80")))),
         Container(decoration:BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image:NetworkImage("https://images.unsplash.com/photo-1691698139354-201a6b38da1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80")))),
         Container(decoration:BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image:NetworkImage("https://plus.unsplash.com/premium_photo-1680799222709-550956b1bbae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=869&q=80")))),
      ],options: CarouselOptions(
        initialPage: 0,
      //height: 500,
      aspectRatio: 16/9,
      viewportFraction: .5,
      enableInfiniteScroll: true,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 2),
      autoPlayCurve: Curves.easeInSine,
      //enlargeCenterPage: true,
      //enlargeFactor: .3,
      scrollDirection: Axis.horizontal,
      )),
    );
  }

}