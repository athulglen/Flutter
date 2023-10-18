import 'package:flutter/material.dart';
import 'SampleDatabase.dart';
import 'sqLogin.dart';
void main() {
  runApp(MaterialApp(
    home: SqfRegister(),
  ));
}
class SqfRegister extends StatefulWidget {
  const SqfRegister({super.key});
  @override
  State<SqfRegister> createState() => _SqfRegisterState();
}
class _SqfRegisterState extends State<SqfRegister> {
  var formkey = GlobalKey<FormState>();
  final name_cntl = TextEditingController();
  final username_cntl = TextEditingController();
  final password_cntl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Register",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                 validator: (email) {
                    if (email!.isEmpty) {
                      return "field is empty/Invaild";
                    } else {
                      return null;
                    }
                  },
                controller: name_cntl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                 validator: (email) {
                    if (email!.isEmpty || !email.contains("@")) {
                      return "field is empty/Invaild";
                    } else {
                      return null;
                    }
                  },
                controller: username_cntl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Email"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                 validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "field is empty/ Invalid Length";
                    } else {
                      return null;
                    }
                  },
                controller: password_cntl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Password"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if(valid){
                      createUser(name_cntl.text, username_cntl.text, password_cntl.text);
                    name_cntl.text = "";
                    username_cntl.text = "";
                    password_cntl.text = "";
                    // Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Succesfully Registered")));
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: ((context) => SqfLogin())));}
                  },
                  child: Text("Register")),
            )
          ],
        ),
      ),
    );
  }
  void createUser(String name, String email, String password) async {
    var id = await SQLDATABASE.create_user(name, email, password);
    print(id);
  }
}
   //     if (id != null) {
    //   Navigator.pushReplacement(
    //       context, MaterialPageRoute(builder: ((context) => SqfLogin())));
    // } else {
    //   Navigator.pushReplacement(
    //       context, MaterialPageRoute(builder: ((context) => SqfSplash())));
    // }
    // name_cntl.text = "";
    // username_cntl.text = "";
    // password_cntl.text = "";