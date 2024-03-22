
import 'dart:convert';

import 'package:http/http.dart'as http;

import '../models/products.dart';

class RemoteService{
  static var client=http.Client();
  static Future<dynamic> fetchProducts()async{
    var response=await client.get(Uri.parse('https://dummyjson.com/products'));
    if(response.statusCode==200){
      var jsonData=response.body;
      return productsFromJson(jsonData);
    }else{
      return null;
    }
  }
}