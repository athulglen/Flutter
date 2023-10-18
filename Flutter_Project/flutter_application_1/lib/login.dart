import 'package:flutter/material.dart';
import 'package:flutter_application_1/register.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_flutter/adapters.dart';
import 'storage in flutter/hive using hive adapter/database/hivedb.dart';
import 'storage in flutter/hive using hive adapter/models/user_model.dart';
import 'storage in flutter/hive using hive adapter/screens/home.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('userData');
  runApp(GetMaterialApp(
    home: AhLogin(),
  ));
}

class AhLogin extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hive Login"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: email,
              decoration: InputDecoration(hintText: "Email"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: pass,
              decoration: InputDecoration(hintText: "Password"),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                final users = await HiveDb.instance.getUser();
                checkUserExist(context, users);
              },
              child: Text("Login")),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Register()));
              },
              child: Text("Not a user? Register Here!!!"))
        ],
      ),
    );
  }

  Future<void> checkUserExist(BuildContext context, List<User> users) async {
    final lemail = email.text.trim();
    final lpass = pass.text.trim();
    bool userFound = false;
    if (lemail != "" && lpass != "") {
      await Future.forEach(
          users,
          (singleUser) => {
                if (lemail == singleUser.email && lpass == singleUser.password)
                  {userFound = true}
                else
                  {userFound = false}
              });
      if (userFound == true) {
        // Navigator.of(context).pushReplacement(
        //     MaterialPageRoute(builder: (context) => HiveHome(email: lemail)));
        Get.offAll(HiveHome(email: lemail,));
      } else {
        // ScaffoldMessenger.of(context).showSnackBar(
        //     SnackBar(content: Text("Login Failed,User Not Found")));
        Get.snackbar('FAILED','User not Exixt');
      }
    }else {
      // ScaffoldMessenger.of(context)
      //     .showSnackBar(SnackBar(content: Text("Field must not be Empty")));
      Get.snackbar('ERROR', 'Fields Must not be empty');
    }
  }
}