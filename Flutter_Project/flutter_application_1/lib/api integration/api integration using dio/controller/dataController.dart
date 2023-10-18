import 'package:flutter/material.dart';
import 'package:flutter_application_1/api%20integration/api%20integration%20using%20dio/model/datamodel.dart';
import 'package:flutter_application_1/api%20integration/api%20integration%20using%20dio/service/dio_service.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DataController extends GetxController{
  RxList<DataModel> datas=RxList();
  RxBool isloading =true.obs;
  RxBool isListatDown =false.obs;
  RxBool isNetConnected =true.obs;

  var url="https://jsonplaceholder.typicode.com/posts";
  var itemController =ItemScrollController();
  isInternetConnected() async{
    isNetConnected.value=await InternetConnectionChecker().hasConnection;
  }
  //to get all the data from get
  fetchData() async{
    isInternetConnected();
    isloading.value=true;
    var response=await DioService().getData(url);
    if(response.statusCode ==200){
      response.data.forEach((element){
        datas.add(DataModel.fromJson(element));
      });
      isloading.value=false;
    }
  }

scrollToDown(){
  itemController.scrollTo(
    index: datas.length,
    duration: Duration(seconds: 3),
    curve: Curves.easeInQuart
    );
    isListatDown.value=true;
}

scrollToUp(){
  itemController.scrollTo(
    index: 0,
    duration: Duration(seconds: 3),
    curve: Curves.bounceInOut
    );
    isListatDown.value=false;
}
@override
void onInit(){
  fetchData();
  isNetConnected();
  super.onInit();
}

}