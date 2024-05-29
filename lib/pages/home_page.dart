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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu), 
              color: Colors.black,
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },);
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
              decoration: const BoxDecoration(
    color: Colors.transparent
),
              child: Image.asset("lib/images/nike.png", color: Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Divider(
                color: Colors.grey[800]
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.white,),
                title: Text("Home", style: TextStyle(color: Colors.white,),),
              ),
            ),

              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.info, color: Colors.white,),
                title: Text("About", style: TextStyle(color: Colors.white,),),
              ),

 

            ),
              ],
            ),

             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.logout_rounded, color: Colors.white,),
                title: Text("Logout", style: TextStyle(color: Colors.white,),),
              ),

 

            ),


          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}