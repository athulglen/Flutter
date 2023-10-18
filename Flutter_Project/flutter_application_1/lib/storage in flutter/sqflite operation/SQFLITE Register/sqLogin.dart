import 'package:flutter/material.dart';
import 'SampleDatabase.dart';
import 'sqHome.dart';
import 'sqRegister.dart';
void main() {
  runApp(MaterialApp(
    home: SqfLogin(),
  ));
}
class SqfLogin extends StatefulWidget {
  const SqfLogin({super.key});
  @override
  State<SqfLogin> createState() => _SqfLoginState();
}
class _SqfLoginState extends State<SqfLogin> {
  // List<Map<String, dynamic>> Auser = [];
  var formkey = GlobalKey<FormState>();
  final email_cntl = TextEditingController();
  final pass_cntl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (email) {
                  if (email!.isEmpty || !email.contains("@")) {
                    return 'field is empty/Invaild';
                  } else {
                    return null;
                  }
                },
                controller: email_cntl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Email"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return 'field is empty/ Invalid Length';
                  } else {
                    return null;
                  }
                },
                controller: pass_cntl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Password"),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  final valid = formkey.currentState!.validate();
                  if (valid) {
                    loginCheck(email_cntl.text, pass_cntl.text);
                  }
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
  void loginCheck(String email, String password) async {
    var data = await SQLDATABASE.CheckLogin(email, password);
    if (data.isNotEmpty) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => SqfHome())));
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Login Succesfully")));
      print(data);
    } else if (data.isEmpty) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: ((context) => SqfRegister())));
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Login Failed")));
    }
  }
}
