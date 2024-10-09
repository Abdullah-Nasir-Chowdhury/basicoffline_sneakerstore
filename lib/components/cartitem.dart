import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/laptop.dart';

class CartItem extends StatefulWidget {
  Laptop laptop;
  CartItem({
    super.key,
    required this.laptop,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart(){
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.laptop);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12.0),
      ),
      margin: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        leading: Image.asset(widget.laptop.imagePath),
        title: Text(widget.laptop.name),
        subtitle: Text(widget.laptop.price),
        trailing: IconButton(
            onPressed: removeItemFromCart,
            icon: Icon(Icons.delete),
        )
      ),
    );
  }
}
