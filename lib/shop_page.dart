// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:product_app/bracelet_title.dart';
import 'package:product_app/models/bracelet.dart';
import 'package:product_app/models/cart.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addBraceletToCart(Bracelet bracelet){
    Provider.of<Cart>(context, listen: false).addItemToCart(bracelet);

    showDialog(context: context, builder: (context) =>
    AlertDialog(
      title: Text('Successfully added'),
      content: Text('Check your Cart'),
    ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => 
    Column(
      children: [
        Column(
          children: [
            Column(
              children: [
                Container(
                  padding:const EdgeInsets.all(12),
                  margin:const EdgeInsets.symmetric(horizontal: 25),
                  decoration:BoxDecoration(color: Colors.grey[200],
                  borderRadius:BorderRadius.circular(8) ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text("Search",
                      style: TextStyle(color: Colors.grey),),
                      Icon(Icons.search,
                      color: Colors.grey,),
                    ],
                  ),
                  
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Text("everyone flies.. some fly longer than others",
                  style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                    children: 
                  [
                    Text("Hot Picks",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),),
                    Text("See all",
                    style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue,
                    ),
                    ),
                  ],
                  ),
                ),
                const SizedBox(height: 10),

                Expanded(child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    Bracelet bracelet = value.getBraceletList()[index];
                    return BraceletTitle(
                      bracelet: bracelet,
                      onTap: () =>  addBraceletToCart(bracelet),
                    );
                  }
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only
                    (top: 25, left: 25, right: 25),
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ],
    ),
    );
  }
}