import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'stateful_login.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: Register()));
}
class Register extends StatefulWidget{
  @override
  State<Register> createState() => _RegisterState();


}

class _RegisterState extends State<Register>{
  var formkey=GlobalKey<FormState>();
  var nopasswordvisiblity =true;
  var nopasswordvisiblity2 =true;
  String? pass;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        ),
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18,bottom: 18.0,left: 18,right: 18),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      hintText: "Username"),
                      validator: (name){
                        if(name!.isEmpty){
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
                    validator: (phone){
                      if(phone!.isEmpty || phone.length <10){
                        return 'field is empty/Invalid';
                      }else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      hintText: "Phone"
                    ),
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0,left: 18,right: 18),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        hintText: "Email"
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
                      pass =password;
                      if(password!.isEmpty || password.length <6){
                        return 'field is empty/Invalid';
                      }else{
                        return null;
                      }
                    },
                    decoration:  InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(nopasswordvisiblity ==true){
                            nopasswordvisiblity=false;
                          }else{
                            return null;
                          }
                        });
                      },icon: Icon(nopasswordvisiblity == true
                      ? Icons.visibility_off_sharp
                      : Icons.visibility
                      )),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                        hintText: "Password"
                    ),
                  ),
                ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 18.0,left: 18,right: 18),
                  child: TextFormField(
                    obscureText: nopasswordvisiblity2,
                    validator: (confirmpassword){
                      if(confirmpassword!.isEmpty || pass!= confirmpassword){
                        return 'field is empty/Invalid';
                      }else{
                        return null;
                      }
                    },
                    decoration:  InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(nopasswordvisiblity ==true){
                            nopasswordvisiblity=false;
                          }else{
                            return null;
                          }
                        });
                      },icon: Icon(nopasswordvisiblity == true
                      ? Icons.visibility_off_sharp
                      : Icons.visibility
                      )),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                        hintText: "Confirm Password"
                    ),
                  ),
                ),
                ElevatedButton(onPressed: (){
                  final valid =formkey.currentState!.validate();
                  if(valid){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login2()));
                  }else{
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
                }, child: Text("Register here")),
              ],)),
         ),
    );
  }

}