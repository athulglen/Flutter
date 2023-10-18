import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: Navdrawer1(),));
}
class Navdrawer1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("NavDrawer"),
    ),
   drawer: Drawer(
    child: ListView(
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://m.media-amazon.com/images/M/MV5BNGU4YzAxOTQtOTk5Yi00MGI3LThiMDMtMzZhMmEwNDBlN2E3XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg"))
          ),
          accountName: Text("My name"),
           accountEmail: Text("myname@gmail.com"),
           currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage("https://m.media-amazon.com/images/M/MV5BNGU4YzAxOTQtOTk5Yi00MGI3LThiMDMtMzZhMmEwNDBlN2E3XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg"),
           ),
           otherAccountsPictures: [
            CircleAvatar(backgroundImage: NetworkImage("https://m.media-amazon.com/images/M/MV5BNGU4YzAxOTQtOTk5Yi00MGI3LThiMDMtMzZhMmEwNDBlN2E3XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg"),
            ),
            CircleAvatar(backgroundImage: NetworkImage("https://m.media-amazon.com/images/M/MV5BNGU4YzAxOTQtOTk5Yi00MGI3LThiMDMtMzZhMmEwNDBlN2E3XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg"),)
           ],
           ),
           ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
           ),
           ListTile(
            leading: Icon(Icons.info),
            title: Text("About"),
           ),
           ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
           ),
           ListTile(
            leading: Icon(Icons.help),
            title: Text("help"),
           ),
      ],
    ),
   ),
   );
  }

}