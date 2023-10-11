import 'package:flutter/widgets.dart';
import 'package:product_app/models/bracelet.dart';


class Cart extends ChangeNotifier{
  List<Bracelet> braceletShop = [
    Bracelet(
    name: 'Dragon Head Beads',
    price: '12', 
    imagePath: 'assets/images/bracelets 3.jpg',
    description: 'Positive Energy',
      ),
      Bracelet(
        name: 'Goodluck Charm',
        price: '10',
        imagePath: 'assets/images/bracelet 6.jpg',
        description: 'for goodluck and positive Aura'
        ),

        Bracelet(
        name: 'African god',
        price: '10',
        imagePath: 'assets/images/bracelet 5.jpg',
        description: 'For Bosses'
        ),

        Bracelet(
        name: 'Dragon Eyes',
        price: '15',
        imagePath: 'assets/images/bracelet 1.jpg',
        description: 'Best for goodlucks' 
        ),
  ];

  List<Bracelet> userCart = [];

  List<Bracelet> getBraceletList(){
    return braceletShop;
  }

  List<Bracelet> getUserCart(){
    return userCart;
  }

  void addItemToCart(Bracelet bracelet){
    userCart.add(bracelet);
    notifyListeners();
  }

  void removeItemToCart(Bracelet bracelet){
    userCart.remove(bracelet);
    notifyListeners();
  }

  void removeItemFromCart(bracelet) {}











}