import 'package:get/get.dart';
import 'package:thecollage/data/collage_data.dart';
import 'package:thecollage/models/collage.dart';

class CollageController extends GetxController {
  var collageList = <Collage>[].obs;
  void fetchDetails() async{
    var data =await RemoteServices.fetchCollage();
    if (data != null) {
      collageList.value = data;

    }
  }
  @override
  void onInit() {
    fetchDetails();// TODO: implement onInit
    super.onInit();
  }
}
