import 'dart:convert';

import '../models/products.dart';
import 'package:http/http.dart'as http;

class RemoteService{
  static var client=http.Client();
  static Future<List<Products>?> fetchProducts()async{
    var response=await client.get(Uri.parse('https://dummyjson.com/products'));
    if(response.statusCode==200){
     var jsonData=response.body;
     return productsFromJson(jsonData);
    }else{
      return null;
    }
  }
}