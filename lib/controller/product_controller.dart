import 'package:get/get.dart';

import '../data/product_data.dart';
import '../models/products.dart';

class ProductController extends GetxController{

   var result=<Products>[].obs;
   void fetchProducts()async{
     var data=await RemoteService.fetchProducts();
     print(data);
     if(data!=null){
          result.value=data;
       print(result);
   }
}
@override
  void onInit() {
    fetchProducts();// TODO: implement onInit
    super.onInit();
  }

}