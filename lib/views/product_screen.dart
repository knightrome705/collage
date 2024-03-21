import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/product_controller.dart';
class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    var controller=Get.put(ProductController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Obx(()=>
         ListView.builder(
          itemCount:controller.result.length ,
          itemBuilder: (context,index) {
            var data=controller.result[index].products[index];
            return Text(data.title);
          }
        ),
      ),
    );
  }
}
