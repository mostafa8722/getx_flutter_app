import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_app/models/product.dart';
class ShoppingController extends GetxController  {
  var products = <Product>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();

  }
  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResults = [
      Product(id: 1, price: 30, productName: "firstProd", productImage: "abs", productDescription: "this is a product"),
      Product(id: 2, price: 40, productName: "secondProd", productImage: "abs", productDescription: "this is a product"),
      Product(id: 3, price: 50, productName: "thirdProd", productImage: "abs", productDescription: "this is a product"),
      Product(id: 4, price: 60, productName: "fourthProd", productImage: "abs", productDescription: "this is a product"),
    ];
    products.value = productResults;
  }
}