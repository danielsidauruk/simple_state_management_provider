import 'package:flutter/material.dart';
import 'car_wishlist.dart';

import '../widgets/car_list.dart';


class CarPage extends StatefulWidget{
  const CarPage ({Key? key}) : super(key: key);

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Management | List of Cars'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.done),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CarWishlist()
                )
              );
            },
          )
        ],
      ),
      body: const CarList()
    );
  }
}