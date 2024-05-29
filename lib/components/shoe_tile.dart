import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sneaker/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
        
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(shoe.imagePath)),

          Text(shoe.description, style: TextStyle(color: Colors.grey[600])),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Column(
                children: [
                  Text(shoe.name),
                  Text(shoe.price)
                ]
              ),
              Icon(Icons.add)
            ],
          )
        ],
      ),

    );
  }
}