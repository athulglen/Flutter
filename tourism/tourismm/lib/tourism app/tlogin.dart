import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tourismm/tourism%20app/thome.dart';
void main(List<String> args) {
  runApp(MaterialApp(home: Tlogin()));
}

class Tlogin extends StatefulWidget{
  const Tlogin({super.key});

  @override
  State<Tlogin> createState() => _LoginState();

}

class _LoginState extends State<Tlogin> {
  final email=TextEditingController();
  final pwd=TextEditingController();
  late SharedPreferences preferences;
  late bool newuser;

  @override
  void initState(){
    check_if_user_already_login();
    super.initState();
  }
  void check_if_user_already_login() async{
    preferences=await SharedPreferences.getInstance();
    newuser=preferences.getBool('newuser') ?? true;
    if(newuser==false){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>ThomeUi()));
    }
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text("LOGIN PAGE"),
    ),
    body: Center(
      child: Column(
        children: [Padding(padding: const EdgeInsets.all(10.0),
        child: TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),hintText: 'Email'
          ),
          controller: email,
        ),
        ),
        Padding(padding: const EdgeInsets.all(10.0),
        child: TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),hintText: 'Password'
          ),
          controller: pwd,
        ),),
        ElevatedButton(onPressed: () async{
          preferences=await SharedPreferences.getInstance();
          String username= email.text;
          String password= pwd.text;

          if(username != "" && password !=""){
            preferences.setString('uname',username);
            preferences.setString('pword',password);

            preferences.setBool('newuser',false);

            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ThomeUi()));
          }
          email.text="";
          pwd.text="";
        }, child: const Text("Login"))],
      ),
    ),
   );
  }
}