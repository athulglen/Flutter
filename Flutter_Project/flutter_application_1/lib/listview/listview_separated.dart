import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: Listview_Separated()));
}
// ignore: must_be_immutable
class Listview_Separated extends StatelessWidget{
   Listview_Separated({super.key});
  var name=[
    "January","February","March","April","May","June","July","August","September","October","November","December",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Separated'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
        // return Icon(Icons.ac_unit_outlined,
        // color: Colors.blue,
        // size: 30,
        // );
        return  Card(
          child: Text(name[index]),
        );
      },
       separatorBuilder: (context, index) {
         if(index %4==0){
          return const Card(color: Colors.red,
          child:  Text("Advertisement"));
         }else{
          return const SizedBox();
         }
       }, itemCount: 12),
    );
  }
}