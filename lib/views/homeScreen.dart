import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thecollage/controller/collage_controller.dart';
import 'package:thecollage/views/second.dart';

import '../widget/cust_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final CollageController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(CollageController());
    controller.fetchDetails(); // Fetch collage details when the screen is initialized
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Collages',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Obx(
            () => controller.collageList.isEmpty
            ? const Center(child: CircularProgressIndicator()) // Show loading indicator if data is not yet fetched
            : ListView.builder(
          itemCount: controller.collageList.length,
          itemBuilder: (context, index) {
            var data = controller.collageList[index];
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Second(data: data.webPages[0],),));
              },
              child: Cust_container(
                countryname: data.country,
                coutrycode: data.name,
                domainname: data.domains.first,
              ),
            );
          },
        ),
      ),
    );
  }
}