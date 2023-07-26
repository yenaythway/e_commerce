import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:own_api/view/product_tile.dart';
import 'package:own_api/controller/controller.dart';
class Home extends StatelessWidget {
 Home({super.key});
  ProductController productController=Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.2),
          itemBuilder: (context, index) {
            return Product_tile(product: productController.productList[index],);
          }),)
    );
  }
}
