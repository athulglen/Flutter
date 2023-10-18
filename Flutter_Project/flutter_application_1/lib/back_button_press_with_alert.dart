import 'package:flutter/material.dart';

class ExitAppAlert extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async{
  return await showDialog(
    context: context,
     builder: (context){
    return AlertDialog(
      title: Text("Exit"),
      content: Text("Do you Really want to exit"),
      actions: [
        ElevatedButton(onPressed: (){
          Navigator.of(context).pop(false);
        }, 
        child: Text("Yes")),
        ElevatedButton(onPressed: (){
          Navigator.of(context).pop(false);
        }, 
        child: Text("No")),
        ElevatedButton(onPressed: (){
          Navigator.of(context).pop(false);
        }, 
        child: Text("Cancel")),
      ],
    );
  });
}
    return WillPopScope(
      onWillPop: showAlert,
       child: Scaffold(appBar: AppBar(
        title: Text("Exit from App"),
       ),
       body: Center(
        child: Text("Press Back Button to exit !!!"),),
       ),);
  }

}
void main(List<String> args) {
  runApp(MaterialApp(home: ExitAppAlert(),));
}