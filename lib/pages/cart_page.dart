import 'package:flutter/material.dart';
import 'package:sneaker/components/cart_item.dart';
import 'package:sneaker/models/cart.dart';
import 'package:provider/provider.dart';
import 'package:sneaker/models/shoe.dart';
import 'package:sneaker/pages/shop_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder:(context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text("My Cart",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              
            ),

            const SizedBox(height: 25,),

            Expanded(child: value.getUserCart().isEmpty ? const Center(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Your cart is empty.", style: TextStyle(fontSize: 14),),
              ],
            )) :   ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder:(context, index) {
                Shoe individualShoe = value.getUserCart()[index];

                return CartItem(shoe: individualShoe);
            },))
          ],
        ),),
    );
  }
}