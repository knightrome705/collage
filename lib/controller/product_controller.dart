import 'dart:convert';

import 'package:get/get.dart';
import 'package:thecollage/models/products.dart';

import '../data/product_data.dart';

class ProductController extends GetxController{

  var result=<Product>[].obs;
  void fetchProducts()async{
    var data=await RemoteService.fetchProducts();
    print(data.products);
     // var optional=productsFromJson(data);
     // print(optional.products);
     //  var products=Products.fromJson(jsonDecode(data));
     //  // print(products.products);
     //
      if(data!=null){
        // print('second print');
        // print(products.products);
        // print(data.runtimeType);
        result.value=data.products;

      }
    }
    @override
  void onInit() {
    fetchProducts();// TODO: implement onInit
    super.onInit();
  }
  }


