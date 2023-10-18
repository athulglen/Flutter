import 'package:flutter/material.dart';
import 'dummydata.dart';

class ProductDetails extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    //to collect value from previous page / route
    final productId =ModalRoute.of(context)?.settings.arguments;

    final productFromList = products.firstWhere((element) => element['id']==productId);

    return Scaffold(
      appBar: AppBar(title: Text(productFromList['name']),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(productFromList['image1']))),
            ),
            Text(
              productFromList['name'],
              style: TextStyle(fontSize: 40),
            ),
            Text(
              productFromList['description'],
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '${productFromList['price']}',
              style: TextStyle(fontSize: 25),
            ),
            Text(
              '${productFromList['rating']}',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }

}