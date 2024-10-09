import 'package:flutter/cupertino.dart';

import 'laptop.dart';

class Cart extends ChangeNotifier {
  // List of laptops for sale

  List<Laptop> laptopShop = [
    Laptop(
        name: "ASUS ROG 15",
        price: '\$' + "550",
        imagePath: "assets/Asus TUF Gaming A15 FA506NCR Ryzen 7 7435HS RTX 3050 4GB Graphics 15.6 FHD Gaming Laptop.jpg",
        description: "Mid-tier Gaming Laptop: Budget Friendly Gaming Laptop: It has the Ryzen 7 7535HS CPU! Also houses the RTX 3050 Graphics Card with 4 GB RAM. It has a 15.6 inch FHD display."),
    Laptop(
        name: "ASUS ROG 15 (2)",
        price: '\$' + "650",
        imagePath: "assets/Asus TUF Gaming A15 FA506NCR Ryzen 7 7435HS RTX 3050 4GB Graphics 15.6 FHD Gaming Laptop (2).jpg",
        description: "Budget Friendly Gaming Laptop: It has the Ryzen 7 7535HS CPU! Also houses the RTX 3050 Graphics Card with 4 GB RAM. It has a 15.6 inch FHD display."),
    Laptop(
        name: "ASUS ROG 15",
        price: '\$' + "550",
        imagePath: "assets/Asus TUF Gaming A15 FA506NCR Ryzen 7 7435HS RTX 3050 4GB Graphics 15.6 FHD Gaming Laptop (3).jpg",
        description: "ASUS ROG Gaming Laptop: It has the Ryzen 7 7535HS CPU! Also houses the RTX 3050 Graphics Card with 4 GB RAM. It has a 15.6 inch FHD display."),
    Laptop(
        name: "ASUS ROG 15",
        price: '\$' + "550",
        imagePath: "assets/Asus TUF Gaming A15 FA506NCR Ryzen 7 7435HS RTX 3050 4GB Graphics 15.6 FHD Gaming Laptop (4).jpg",
        description: "It has the Ryzen 7 7535HS CPU! Also houses the RTX 3050 Graphics Card with 4 GB RAM. It has a 15.6 inch FHD display."),

  ];

  // List of items in user's cart
  List<Laptop> userCart = [];


  // get list of items for sale
  List<Laptop> getLaptopList(){
    return laptopShop;
  }

  // get user cart
  List<Laptop> getUserCart(){
    return userCart;
  }

  // add items to cart
  void addItemToCart(Laptop laptop){
    userCart.add(laptop);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Laptop laptop){
    userCart.remove(laptop);
    notifyListeners();
  }

}