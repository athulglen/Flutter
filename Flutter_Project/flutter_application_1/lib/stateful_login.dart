import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home.dart';
import 'register.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: Login2()));
}
class Login2 extends StatefulWidget{
  @override
  State<Login2> createState() => _Login2State();

  
}
class _Login2State extends State<Login2>{
  var formkey= GlobalKey<FormState>();
  var nopasswordvisiblity =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login2Page"),
      ),
      body: Form(
        key: formkey,// this key is used to fetch the current state of form
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18,bottom: 18.0,left: 18,right: 18),
              child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50)),
                  hintText: "Username"
              ),
              validator: (username){
                if(username!.isEmpty || !username.contains("@")){
                  return 'field is empty/Invalid';
                }else{
                  return null;
                }
              }
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0,left: 18,right: 18),
            child: TextFormField(
              obscureText: nopasswordvisiblity,
                validator: (password){
                  if(password!.isEmpty||password.length<6){
                    return 'field is empty/Invalid';
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      if(nopasswordvisiblity == true){
                        nopasswordvisiblity =false;
                      }else{
                        nopasswordvisiblity=true;
                      }
                    });
                  }, icon: Icon(nopasswordvisiblity ==true 
                  ? Icons.visibility_off_sharp
                  : Icons.visibility,
                  )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)),
                  hintText: "Password"
                ),
            ),
          ),
            ElevatedButton(onPressed: (){
              final valid =formkey.currentState!.validate();
              if(valid){
                Navigator.of(context)..push(MaterialPageRoute(builder: (context) => Home()));
              }
              else{
                Fluttertoast.showToast(
                   msg: "Invalid Username or Password",
                   toastLength: Toast.LENGTH_SHORT,
                   gravity: ToastGravity.BOTTOM,
                   //timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                    );
              }
            }, child: Text("Login")),
            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Register()));
            }, child: Text("not Not user ||Register Here!",style: TextStyle(),))
          ],
        )),
    );
  }

}