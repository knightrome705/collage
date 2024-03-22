import 'dart:convert';

import 'package:get/get.dart';
import 'package:thecollage/models/products.dart';

import '../data/product_data.dart';

class ProductController extends GetxController{

  var result=<Products>[].obs;
  void fetchProducts()async{
    var data=await RemoteService.fetchProducts();
    // print('first print');
    //  print(data);
     var products=ProductModel.fromJson(jsonDecode(data));
      if(data!=null){
        print('second print');
        print(products.products);
        print(data.runtimeType);
        result.value=products.products!;

      }
    }
    @override
  void onInit() {
    fetchProducts();// TODO: implement onInit
    super.onInit();
  }
  }


