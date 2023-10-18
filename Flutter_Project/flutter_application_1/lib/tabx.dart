import 'package:flutter/material.dart';
import 'package:flutter_application_1/register.dart';
import 'package:flutter_application_1/stateful_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'listview/listview_builder.dart';
import 'listview/listview_custom.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: TabEx(),));
}
class TabEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return DefaultTabController(
  length: 4,
 child: Scaffold(
  appBar: AppBar(
  title: Text("Whatsapp"),
  actions: [
    Icon(Icons.search),
    Icon(Icons.camera_alt),
    PopupMenuButton(itemBuilder: (context){
      return[
      PopupMenuItem(child: Text("Settings")),
      PopupMenuItem(child: Text("About")),
    ];})
  ],
  bottom: TabBar(tabs: [
    SizedBox(
      width: MediaQuery.of(context).size.width*.1,
    child:
    FaIcon(FontAwesomeIcons.peopleGroup)),
    SizedBox(
      width: MediaQuery.of(context).size.width*.3,
    child:
    Text("Chat")),
    SizedBox(
      width: MediaQuery.of(context).size.width*.3,
       child:Text("Status")),
    SizedBox ( 
      width: MediaQuery.of(context).size.width*.3,
      child: Text("Call"))
  ]),
 ),
 body: TabBarView(children: [
  // Center(child: Text("Community")),
  // Center(child: Text("Chat")),
  // Center(child: Text("Status")),
  // Center(child: Text("Call")),
  ListView_with_builder(),
  Register(),
  Login2(),
  ListView_Custom(),
 ]),
 ));
  }

}