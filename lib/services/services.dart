import 'package:http/http.dart' as http;
import 'package:tigabites_test/model/product_model.dart';

class Services {
  static var client = http.Client();
  static List<Productes> _productes = [];
  static Future<List<Productes>> getProductsDatas() async {
    try {
      final responce = await client.get(
          Uri.parse("http://modern.resto.qa/api/product?store_id=1043&page_first_result=0&result_per_page=20"));
      if (responce.statusCode == 200) {
        _productes = productsFromJson(responce.body);
        return _productes;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
