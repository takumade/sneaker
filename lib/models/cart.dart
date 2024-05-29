import 'package:flutter/material.dart';
import 'package:sneaker/models/shoe.dart';

class Cart extends ChangeNotifier {


  List <Shoe> shoeShop = [
      Shoe(
        name: "Air Jordan 1 (low)",
        price: '140',
        description: "The Air Jordan 1 Low OG remakes the classic sneaker with new colors and textures.",
        imagePath: "lib/images/air-jordan-1-low.png"
      ),

      Shoe(
        name: "Air Jordan 1 (high)",
        price: '180',
        description: "This iteration of the AJ1 reimagines Mike's first signature model with a fresh mix of colors.",
        imagePath: "lib/images/air-jordan-i-high.png"
      ),

      Shoe(
        name: "Nike Blazer Mid 77",
        price: '105',
        description: "In the ‘70s, Nike was the new shoe on the block.",
        imagePath: "lib/images/blazer-mid-77-vintage.png"
      ),

      Shoe(
        name: "Nike Metcon 9",
        price: '150',
        description: "Whatever your 'why' is for working out, the Metcon 9 makes it all worth it",
        imagePath: "lib/images/custom-nike-metcon-9.png"
      ),

      Shoe(
        name: "Dunk Low Retro",
        price: '115',
        description: "TRecognizing the Dunk's roots as the top-ranking college team sneaker",
        imagePath: "lib/images/dunk-low-retro.png"
      ),

      Shoe(
        name: "Pegasus 41",
        price: '140',
        description: "Responsive cushioning in the Pegasus provides an energized ride for everyday road running.",
        imagePath: "lib/images/pegasus-41-mens.png"
      ),

      Shoe(
        name: "Pegasus Trail 4",
        price: '97.7',
        description: "Running is your daily ritual, taking you from road to trail as you seek out new adventures and goals.",
        imagePath: "lib/images/pegasus-trail-4-gore.png"
      ),

  ];


  List<Shoe> userCart = [];


  List<Shoe> getShoeList  () {
    return shoeShop;
  }


  List<Shoe> getUserCart  () {
    return userCart;
  }


void addItemToCart(Shoe value){
  userCart.add(value);
  notifyListeners();
}
  

  void removeItemFromCart(Shoe value){
  userCart.remove(value);
  notifyListeners();
}

}