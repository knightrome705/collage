import 'dart:convert';

import 'package:http/http.dart'as http;

class RemoteService{
  static var client=http.Client();
  static Future<dynamic> fetchProducts()async{
    var response=await client.get(Uri.parse('https://dummyjson.com/products'));
    if(response.statusCode==200){
      var jsonData=response.body;
      return jsonData;
    }else{
      return null;
    }
  }
}