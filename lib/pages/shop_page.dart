import 'package:flutter/material.dart';
import 'package:sneaker/components/shoe_tile.dart';
import 'package:sneaker/models/cart.dart';
import 'package:sneaker/models/shoe.dart';
import 'package:provider/provider.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        Container(
          padding: const EdgeInsetsDirectional.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Search", style: TextStyle(color: Colors.grey)),
              Icon(Icons.search, color: Colors.grey)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text("Everyone flies... some fly longer than others",
              style: TextStyle(color: Colors.grey[600])),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Hot Picks 🔥',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              Text(
                "See All",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Shoe shoe = Shoe(
                      name: "Air Jordan",
                      price: '248',
                      description: "Cool shoe",
                      imagePath: "lib/images/air-jordan-1-low.png");
                  return ShoeTile(
                    shoe: shoe,
                  );
                })),
        const Padding(padding: EdgeInsets.only(top: 25, left: 25, right: 25), 
        child: Divider(color: Colors.transparent)),
      ],
    ));
  }
}
