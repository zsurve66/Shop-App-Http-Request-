import 'package:flutter/material.dart';

import 'package:products_app/screens/orders_screen.dart';
import 'package:products_app/screens/user_products_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: const Text('Hello Friend!!'),
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          Card(
            elevation: 4,
            child: ListTile(
              leading: const Icon(Icons.shop),
              title: const Text('Shop'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ),
          const Divider(),
          Card(
            elevation: 4,
            child: ListTile(
              leading: const Icon(Icons.payment),
              title: const Text('Orders'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(OrdersScreen.routeName);
              },
            ),
          ),
          const Divider(),
          Card(
            elevation: 4,
            child: ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Manage Products'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(UserProductsScreen.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
