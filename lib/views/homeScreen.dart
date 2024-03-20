
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thecollage/controller/collage_controller.dart';

import '../widget/cust_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var controller=Get.put(CollageController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Collages',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
      ),
      body: Obx(()=>
        ListView.builder(
          itemBuilder: (context,index) {
            var data=controller.collageList[index];
            print('value of the data is');
            print(data.name);
            return Cust_container(
                countryname: data.country,
                coutrycode: data.name,
                domainname: data.domains.first);
          }
        ),
      ),
    );
  }
}
