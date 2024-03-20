import '../models/collage.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();
  static Future<List<Collage>?> fetchCollage() async {
    var response = await client
        .get(Uri.parse('http://universities.hipolabs.com/search?name=middle'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return collageFromJson(jsonString);
    }else{
      return null;
    }
  }
}
