import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: ListView1()));
}
class ListView1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Sample"),
      ),
      body: ListView(
        children: [
          Center(child: Text("Shop Here",style: GoogleFonts.satisfy(fontSize: 50,color: Colors.pink),
          )),
          Card(
            color: Colors.blue,
          
          child:ListTile(
          title: Text("Shoe",style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("\$780"),
          leading: CircleAvatar(
            backgroundImage:NetworkImage("https://cdn.dribbble.com/users/77553/screenshots/11547223/media/595aef422e069d99d014bb713d0f531a.jpg?resize=400x0")),
          trailing: Icon(Icons.shopping_cart_outlined),
          )),
          Card(
            color: Colors.orange,
          child:ListTile(
          title: Text("Watch",style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("\$680"),
          leading: CircleAvatar(
             backgroundImage: NetworkImage("https://rukminim2.flixcart.com/image/450/500/xif0q/watch/t/k/7/-original-imagqcq2jahmzppg.jpeg?q=90&crop=false")),
          trailing: Icon(Icons.shopping_cart_outlined),
          )),
          Card(
            color: Colors.green,
          child:
          ListTile(
            title:Text("Bagpack",style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("\$400"),
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://assets.adidas.com/images/w_383,h_383,f_auto,q_auto,fl_lossy,c_fill,g_auto/965c03f86cc54ef9b372aefb0027613a_9366/utility-festival-crossbody-bag.jpg")),
            trailing: Icon(Icons.shopping_cart_outlined),
          )),
        ],
      ) ,
    );
  }

}