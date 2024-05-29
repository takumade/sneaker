import 'package:flutter/material.dart';
import 'package:sneaker/components/bottom_nav_bar.dart';
import 'package:sneaker/pages/cart_page.dart';
import 'package:sneaker/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void navigateBottomBar (int value){
      setState(() {
        _selectedIndex = value;
      });
  }

  final List<Widget> _pages = [
    const  ShopPage(),
    const CartPage()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}