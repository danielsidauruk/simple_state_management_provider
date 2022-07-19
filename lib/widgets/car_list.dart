import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'car_tile.dart';

import '../provider/car_wishlist_provider.dart';


class CarList extends StatelessWidget{
  const CarList({Key? key}) : super(key: key);

  final List<String> carList = const [
    'Rolls - Royce Ghost Black Badge',
    'Rolls - Royce Dawn Black Badge',
    'Mercedes - Maybach S600 Cabriolet',
    'Mercedes AMG S63 Cabriolet',
    'Mercedes - Maybach S680',
    'Mercedes - AMG G63',
    'BRABUS 800 | Mercedes - AMG G63',
    'Bentley Flying Spur Mulliner',
    'Rolls - Royce Phantom',
    'BMW 7 Series',
  ];

  @override
  Widget build(BuildContext context) {
    final carWishlist = Provider.of<CarWishListProvider>
      (context, listen: false).carWishList;

    return ListView.builder(
      itemCount: carList.length,
      itemBuilder: (context, index) {
        return Consumer <CarWishListProvider>(
          builder: (context, CarWishListProvider data, widget){
            return CarListTile(
              carName: carList[index],
              isWishlist: carWishlist.contains(carList[index]) ,
              onClick: () {
                data.addData(carList[index]);
              },
            );
          },
        );
      },
    );
  }
}