import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/car_wishlist_provider.dart';


class CarWishlist extends StatelessWidget{
  const CarWishlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carWishlist = Provider.of<CarWishListProvider>
      (context, listen: false).carWishList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Car Wishlist'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Consumer <CarWishListProvider>(
            builder: (context, CarWishListProvider data, widget){
              return ListTile(
                title: Text(carWishlist[index]),
              );
            },
          );
        },
        itemCount: carWishlist.length,
      ),
    );
  }
}