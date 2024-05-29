import 'package:flutter/material.dart';
import 'package:sneaker/navigators/bottom_nav_bar.dart';
import 'package:sneaker/navigators/app_drawer.dart';


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
      drawer: const AppDrawer(),
      body: pagesList[_selectedIndex],
    );
  }
}

