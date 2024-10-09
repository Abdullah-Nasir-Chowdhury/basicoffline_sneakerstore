import 'package:basicoffline_sneakerstore/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:basicoffline_sneakerstore/components/laptoptile.dart';
import 'package:provider/provider.dart';
import '../models/laptop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {

    void addLaptopToCart(Laptop laptop){
      // add laptop to cart
      Provider.of<Cart>(context, listen: false).addItemToCart(laptop);

      // alert the user, laptop successfully added
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Successfully Added"),
            content: Text("Check your cart")
          ));
    }

    return Consumer<Cart>(builder: (context, value, child) => Column(
      children:[
        // search bar
        Container(
          padding: EdgeInsets.all(12.0),
          margin: EdgeInsets.all(25.0),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Search"),
              Icon(Icons.search)
            ]
          ),
        ),

        // message

        Text(
          "Wisdom has been chasing you but you have always been faster...",
        style: TextStyle(
          color: Colors.grey[500],
          fontSize: 14.0,
        ),
          textAlign: TextAlign.center,
        ),

        // hot picks
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Hot Picks 🔥 ", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
              Text("See all", style:TextStyle(color:Colors.blueAccent))
            ],
          ),
        ),
        SizedBox(height: 12),

        // list of laptops on hot sale
        Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                // get laptop from cart
                Laptop laptop = value.getLaptopList()[index];
                return LaptopTile(
                  laptop:laptop,
                  onTap: () => addLaptopToCart(laptop),
                );
    }
            )
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(25.0,25.0, 25.0,0.0),
          child: Divider(color: Colors.white),
        )

      ]
    ),
    );
  }
}
