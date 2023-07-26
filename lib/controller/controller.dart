import 'package:get/get.dart';
import 'package:own_api/service/service.dart';

import '../models/product.dart';

class ProductController extends GetxController {
  bool isLoading = false;
  RxList<Product> productList = <Product>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchdata();
  }

  void fetchdata() async {
    try {
      isLoading = true;
      List<Product>? product_list = await Service().fetch_data();
      if (productList != null) {
        productList.value = productList;
      }
    } catch (error) {
      print(error);
    } finally {
      isLoading = false;
    }
  }
}
