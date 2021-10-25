// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:products_app/screens/edit_product_screen.dart';
import 'package:provider/provider.dart';

import 'package:products_app/screens/product_detail_screen.dart';
import 'package:products_app/screens/product_overview_screen.dart';
import 'providers/products.dart';
import 'package:products_app/providers/cart.dart';
import 'package:products_app/screens/cart_screen.dart';
import 'package:products_app/providers/orders.dart';
import 'package:products_app/screens/orders_screen.dart';
import 'package:products_app/screens/user_products_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        debugShowCheckedModeBanner: false,
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
          UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
          EditProductScreen.routeName: (ctx) => EditProductScreen(),
        },
      ),
    );
  }
}
