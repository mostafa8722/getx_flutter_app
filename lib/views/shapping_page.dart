import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_app/controllers/cart_controller.dart';
import 'package:getx_flutter_app/controllers/shopping_controller.dart';

class ShoppingPage extends StatelessWidget{
  final shoppingController = Get.put(ShoppingController()) ;
  final cartController = Get.put(CartController()) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GetX<CartController>(
          builder: (controller){
            return Text("GetX - cart : \$ ${cartController.totalPrice}",);
          },
        )
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: GetX<ShoppingController>(
                  builder: (ShoppingController controller){
                    return ListView.builder
                      (
                        itemCount: controller.products.length,
                        itemBuilder: (BuildContext context,int index) =>CardProduct(controller,index));
                  },
                )

            )
          ],
        ),
      ),

    );
  }
  Widget CardProduct(ShoppingController controller, int index){
    return
        Container(
          margin: EdgeInsets.only(top: 10,left: 10,right: 10),
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white
          ),
          child:
          Column(

            children: [
              Row(
               children: [
                 Container(
                   height: 70,
                   width: 70,
                   decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.green
                   ),
                 ),
                 Column(
                   children: [
                     Text(controller.products[index].productName),
                     SizedBox(height: 10,),
                     Text(controller.products[index].productImage,overflow: TextOverflow.ellipsis,),

                   ],
                 )
               ],
              ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Padding(padding: EdgeInsets.all(10)
                   ,child: Text(controller.products[index].price.toString()),
                 ),
                 RaisedButton(

                     onPressed:(){
                       cartController.addCartItem(controller.products[index]);
                     },
                 child: Text("add to Card"),
                 )
               ],
             )
            ],

          )
          ,
        );
  }
}