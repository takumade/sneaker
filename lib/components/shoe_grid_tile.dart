import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sneaker/models/shoe.dart';

class ShoeGridTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeGridTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: Stack(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(shoe.imagePath)),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12))),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ),

           Positioned(
            bottom: 0,
             child: Container(
               child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 12, top: 6, bottom: 12),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.2),
                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 140,
                                  child: Text(shoe.name, 
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.white
                                  )),
                                ),
                                const SizedBox(height: 3,),
                          Text('\$' + shoe.price, style: const TextStyle(color: Colors.white),)
                              ],
                            ),
                          ),
                          
                        ]
                      ),
             ),
             ),
        


        ],
      ),
    );
  }
}
