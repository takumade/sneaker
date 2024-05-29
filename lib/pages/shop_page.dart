import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sneaker/components/shoe_tile.dart';
import 'package:sneaker/models/cart.dart';
import 'package:sneaker/models/shoe.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:sneaker/pages/products_page.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    // alert the user
    showDialog(context: context, builder: (context) => const AlertDialog(
      title: Text("Successfully Added") ,
      content: Text("Check your cart"),
    ) );
  }


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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text('Hot Picks 🔥',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              GestureDetector(
                onTap: () =>  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ProductsPage())),
                child: const Text(
                  "See All",
                  style:
                      TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
            child: ListView.builder(
                itemCount: value.getShoeList().length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Shoe shoe = value.getShoeList()[index];
                  return ShoeTile(
                    shoe: shoe,
                    onTap: () => addShoeToCart(shoe),
                  );
                })),

              
    
      ],
    ));
  }
}
