import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/car_page.dart';

import 'package:state_management_dengan_setstate/provider/car_wishlist_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CarWishListProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'State Management',
        theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            visualDensity: VisualDensity.adaptivePlatformDensity
        ),
        home: const CarPage(),
      ),
    );
  }
}