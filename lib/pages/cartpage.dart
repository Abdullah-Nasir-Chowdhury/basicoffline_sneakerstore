import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cartitem.dart';
import '../models/cart.dart';
import '../models/laptop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child)=>Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "My Cart",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,)
              ),
              const SizedBox(height:10),
              Expanded(
                  child: ListView.builder(
                    itemCount: value.getUserCart().length,
                    itemBuilder: (context, index){
                      // get individual laptop
                      Laptop individualLaptop = value.getUserCart()[index];
                      // return the cart item
                      return CartItem(
                        laptop: individualLaptop,
                      );
                    },

                  )
              )

            ],
          ),
        ),
    );
  }
}
