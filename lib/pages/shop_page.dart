import 'package:flutter/material.dart';
import 'package:sneaker/components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


            Container(
              padding: EdgeInsetsDirectional.all(12),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search", style: TextStyle(color: Colors.grey)),
                  Icon(Icons.search, color: Colors.grey)
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Text("Everyone flies... some fly longer than others", style: TextStyle(color: Colors.grey[600])),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Hot Picks 🔥', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ) ),
                  Text("See All", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
                ],
              ),
            ),

            const SizedBox(height: 10,),

            Expanded(child: ListView.builder(
              itemBuilder: (context, index) {
              return ShoeTile();
            }))



      ],
    );
  }
}