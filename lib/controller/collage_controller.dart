import 'package:get/get.dart';
import 'package:thecollage/data/collage_data.dart';
import 'package:thecollage/models/collage.dart';

class CollageController extends GetxController {
  var collageList = <Collage>[].obs;
  void fetchDetails() async{
    var data =await RemoteServices.fetchCollage();
    print(data);
    if (data != null) {
      collageList.value = data;
      print(collageList.value);
    }
  }
  @override
  void onInit() {
    fetchDetails();// TODO: implement onInit
    super.onInit();
  }
}
