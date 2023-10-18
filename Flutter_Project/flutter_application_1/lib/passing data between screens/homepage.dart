import 'package:flutter/material.dart';

import 'detailspage.dart';
import 'dummydata.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: ProductHome(),
  routes: {
    'details' : (context) => ProductDetails()
  },));
}
class ProductHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shop now"),),
      body: ListView(
        children: products.map((productonebyone) => Card(
          child: ListTile(
            
            leading: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(productonebyone["image1"])))),
                  title: Text(productonebyone['name']),
                  subtitle: Text('${productonebyone['price']}'),
                  onTap: () {
                    gotoNextPage(context,productonebyone['id']);
                  },
          ),
        )).toList(),
      ),
    );
  }
  void gotoNextPage(BuildContext context, productId){
    Navigator.pushNamed(context, 'details',arguments: productId);
  }

}