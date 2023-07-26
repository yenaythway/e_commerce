import 'package:http/http.dart' as http;
import "package:own_api/models/product.dart";

class Service {
  Future<List<Product>?> fetch_data() async {
    
    var response = await http.get(Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
    if (response.statusCode == 200) {
      return product_list(response.body);
    } else {
      return null;
    }
  }
}
