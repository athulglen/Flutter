import 'package:flutter/material.dart';
import 'package:flutter_application_1/api%20integration/api%20integration%20using%20dio/controller/dataController.dart';
import 'package:get/get.dart';

class DetailData extends StatelessWidget {
  int index;

  DetailData({required this.index});

  DataController controller = Get.find<DataController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detailed Data'),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(controller.datas[index].id.toString()),
          Text(controller.datas[index].title!),
          Text(controller.datas[index].body!),

        ],
      )),
    );
  }
}