

import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
            

          Container(
          height: 200,
          padding: const EdgeInsets.only(top: 25),
          child: Image.asset("lib/images/nike.png", color: Colors.white),
        ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Divider(
              color: Colors.grey[800]
            ),
          ),
    
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: ListTile(
              leading: Icon(Icons.home, color: Colors.white,),
              title: Text("Home", style: TextStyle(color: Colors.white,),),
            ),
          ),
    
            const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: ListTile(
              leading: Icon(Icons.info, color: Colors.white,),
              title: Text("About", style: TextStyle(color: Colors.white,),),
            ),
    
     
    
          ),
            ],
          ),
    
           const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: ListTile(
              leading: Icon(Icons.logout_rounded, color: Colors.white,),
              title: Text("Logout", style: TextStyle(color: Colors.white,),),
            ),
    
     
    
          ),
    
    
        ],
      ),
    );
  }
}