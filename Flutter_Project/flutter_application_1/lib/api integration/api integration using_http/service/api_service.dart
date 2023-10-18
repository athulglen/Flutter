import 'package:flutter_application_1/api%20integration/api%20integration%20using_http/model/product_model.dart';
import 'package:http/http.dart'as http;
class HttpService{
  static Future<List<ProductModel>> fetchProduct()async{
    var respone=await  http.get(Uri.parse("http://fakestoreapi.com/products"));
    if(respone.statusCode==200){
      var data=respone.body;
      return productModelFromJson(data);
    }else{
      throw Exception();
    }
  }
}