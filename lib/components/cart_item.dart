// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:product_app/models/bracelet.dart';
import 'package:product_app/models/cart.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Bracelet bracelet;
  CartItem({super.key,
   required this.bracelet});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart(){
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.bracelet);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
         borderRadius: BorderRadius.circular(8),
        ),
      margin:const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.bracelet.imagePath),
        title: Text(widget.bracelet.name),
        subtitle: Text(widget.bracelet.price),
        trailing: IconButton(
          icon: Icon(Icons.delete),
         onPressed: removeItemFromCart,),
      ),
    );
  }
}