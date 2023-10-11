// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:product_app/components/cart_item.dart';
import 'package:product_app/models/bracelet.dart';
import 'package:product_app/models/cart.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => 
    Padding(
      padding:  EdgeInsets.symmetric(horizontal: 25),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My Cart", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize:24,
          ),
          ),

          const SizedBox(height: 10,),
          Expanded(child: ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context, index) {
              Bracelet individualBracelet =
               value.getUserCart()[index];

               return CartItem(bracelet: individualBracelet);

            }))
        ],
      ),
    ));
  }
} 