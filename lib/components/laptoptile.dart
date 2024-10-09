import 'package:flutter/material.dart';
import 'package:basicoffline_sneakerstore/models/laptop.dart';

class LaptopTile extends StatelessWidget {
  Laptop laptop;
  void Function()? onTap;
  LaptopTile({
    super.key,
    required this.laptop,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:25, right:25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(laptop.imagePath),
          ),

          // description
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(laptop.description, style: TextStyle(color: Colors.grey[600], fontSize: 11.0),),
          ),

          // name + price + details
          Padding(
            padding: const EdgeInsets.only(left:12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // shoe name
                    Text(laptop.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

                    // shoe price
                    Text('\$ ' + laptop.price, style: TextStyle(color: Colors.grey[600]),),

                  ],
                ),

                // plus button: add to cart
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      )
                    ),
                    child: const Icon(Icons.add, color: Colors.white,),
                  ),
                ),
              ],
            ),
          ),
        ]
      )
    );
  }
}
