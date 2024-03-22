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
    var controller = Get.put(ProductController());
    return Scaffold(
        appBar: AppBar(
          title: const Text('Products' ,style:TextStyle(color: Colors.white) ,),
          backgroundColor: Colors.blue,
        ),
        body: Obx(
          () =>controller.result.isEmpty?const Center(child: CircularProgressIndicator(),):ListView.builder(
              itemCount: controller.result.length,
              itemBuilder: (context, index) {
                var data = controller.result[index];
                return ListTile(
                    leading: CircleAvatar(backgroundImage: NetworkImage(data.thumbnail!),),
                    title: Text(data.title.toString()),
                  subtitle: Text(data.price.toString()),
                  trailing: Text(data.rating.toString()),
                );
              }),
        ));
  }
}
