import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: Stag_Grid(),));
}
class Stag_Grid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered Grid View"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2, 
            mainAxisCellCount: 2, 
            child: Container(
              color: Colors.green,
              child: Center(
                child: Icon(Icons.cabin)),
            )),
            StaggeredGridTile.count(
            crossAxisCellCount: 2, 
            mainAxisCellCount: 4, 
            child: Container(
              color: Colors.orange,
              child: Center(
                child: Icon(Icons.add)),
            )),
            StaggeredGridTile.count(
            crossAxisCellCount: 2, 
            mainAxisCellCount: 3, 
            child: Container(
              color: Colors.purple,
              child: Center(
                child: Icon(Icons.qr_code)),
            )),
            StaggeredGridTile.count(
            crossAxisCellCount: 2, 
            mainAxisCellCount: 4, 
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Icon(Icons.ice_skating)),
            )),
            StaggeredGridTile.count(
            crossAxisCellCount: 2, 
            mainAxisCellCount: 4, 
            child: Container(
              color: Colors.pink,
              child: Center(
                child: Icon(Icons.ac_unit)),
            )),
            StaggeredGridTile.count(
            crossAxisCellCount: 2, 
            mainAxisCellCount: 1, 
            child: Container(
              color: Colors.green,
              child: Center(
                child: Icon(Icons.cabin)),
            ))
        ],
        ),
      ),
    );
  }
  
}