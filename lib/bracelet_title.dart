// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:product_app/models/bracelet.dart';


class BraceletTitle extends StatelessWidget {
  Bracelet bracelet;
  void Function()? onTap;
 BraceletTitle({super.key, required this.bracelet, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(bracelet.imagePath),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(bracelet.description, 
              style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bracelet.name,
                        style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ) ,),
            
                      const SizedBox(height: 5),
            
                      Text(
                       '\$'+ bracelet.price,
                       style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                  
                  GestureDetector(
                    onTap:onTap, 
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius:
                         BorderRadius.only(
                          topLeft: Radius.circular(12),
                         bottomRight: Radius.circular(12),
                         ),
                         ),
                      child:
                       Icon(Icons.add,
                        color: Colors.white,),
                    ),
                  )
            
            
                ],
              ),
            )

        ],
      ),
      
    );
  }
}