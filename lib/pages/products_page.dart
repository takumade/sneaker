import 'package:flutter/material.dart';
import 'package:sneaker/components/cart_item.dart';
import 'package:sneaker/components/shoe_grid_tile.dart';
import 'package:sneaker/models/cart.dart';
import 'package:provider/provider.dart';
import 'package:sneaker/models/shoe.dart';
import 'package:sneaker/navigators/bottom_nav_bar.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {

  int _selectedIndex = 2;

  void navigateBottomBar (int value){
      setState(() {
        _selectedIndex = value;
      });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.grey[300],
            bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu), 
              color: Colors.black,
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },);
          }
        ),
      ),
      body: _selectedIndex == 2 ? Products() :  pagesList[_selectedIndex]
    );
  }
}


class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder:(context, value, child) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
      
              const Text("All Products",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                
              ),
      
              const SizedBox(height: 25,),
      
              Expanded(child: 
              
              GridView.builder(
                itemCount: value.getShoeList().length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder:(context, index) {
                  Shoe individualShoe = value.getShoeList()[index];
      
                  return ShoeGridTile(shoe: individualShoe, onTap: (){});
              },))
            ],
          ),),
      );
  }
}