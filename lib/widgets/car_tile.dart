import 'package:flutter/material.dart';

class CarListTile extends StatelessWidget {
  final String carName;
  final bool isWishlist;
  final Function() onClick;

  const CarListTile({
    Key? key,
    required this.carName,
    required this.isWishlist,
    required this.onClick
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(carName),
      trailing: isWishlist
          ? const Icon(Icons.done)
          : ElevatedButton(
              onPressed: onClick,
              child: const Text('Wishlist')
          )
    );
  }
}

