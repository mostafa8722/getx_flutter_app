import 'package:get/get.dart';
import 'package:getx_flutter_app/models/product.dart';

class CartController extends GetxController{
  var carItems = <Product>[].obs;
  int get count => carItems.length;
  double get totalPrice => carItems.fold(0,(sum,item)=> sum! + item.price);

  addCartItem (Product product){
    carItems.add(product);
  }
}