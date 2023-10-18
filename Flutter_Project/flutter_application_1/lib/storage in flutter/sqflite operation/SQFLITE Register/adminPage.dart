import 'package:flutter/material.dart';
import 'package:flutter_application_1/storage%20in%20flutter/sqflite%20operation/SQFLITE%20Register/SampleDatabase.dart';

void main() {
  runApp(const MaterialApp(
    home: SqfAdminPage(),
  ));
}

class SqfAdminPage extends StatefulWidget {
  const SqfAdminPage({super.key});

  @override
  State<SqfAdminPage> createState() => _SqfAdminPageState();
}

class _SqfAdminPageState extends State<SqfAdminPage> {
  @override
  void initState() {
    Refresh();
    super.initState();
  }

  var data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Panel"),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(data[index]['cname']),
                subtitle: Text(data[index]['cemail']),
                trailing: IconButton(
                    onPressed: () {
                      delet(data[index]['id']);
                    },
                    icon: const Icon(Icons.delete)),
              ),
            );
          }),
    );
  }

  void delet(int id) async {
    await SQLDATABASE.Deleteuser(id);
    Refresh();
  }

  void Refresh() async {
    var mydata = await SQLDATABASE.getAll();
    setState(() {
      data = mydata;
    });
  }
}
