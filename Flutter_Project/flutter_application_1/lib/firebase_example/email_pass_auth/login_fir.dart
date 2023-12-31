import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_example/email_pass_auth/firebase_db.dart';
import 'package:flutter_application_1/firebase_example/email_pass_auth/home_fir.dart';
void main(List<String> args) async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  User? user=FirebaseAuth.instance.currentUser;
  runApp(MaterialApp(home: user==null ?Login_fire() : HomeFire()));
}
class Login_fire extends StatefulWidget{
  @override
  State<Login_fire> createState() => _Login_fireState();
}
class _Login_fireState extends State<Login_fire>{
  final username_controller =TextEditingController();
  final password_controller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder(),
              hintText: 'Username'),
              controller: username_controller,
            ),
          ),
          Padding(padding: EdgeInsets.all(10.0),
         child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder(),
              hintText: 'Password'),
              controller: password_controller,
            ),),
            ElevatedButton(onPressed: (){
              String email =username_controller.text.trim();
              String pass= password_controller.text.trim();

              FirebaseHelper().login(email:email,password:pass).then((result) {
                if(result==null){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeFire()));
                }else{
                  ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(result)));
                }
              });
            }, child: Text('Login Here')),
            SizedBox(height: 20,),
            TextButton(onPressed: (){}, child: Text('Register here'))
        ],
      ),
    );
  }

}