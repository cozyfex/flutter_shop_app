import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/orders.dart' show Orders;

import '../widgets/order_item.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orders = Provider.of<Orders>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      body: ListView.builder(
        itemCount: orders.orders.length,
        itemBuilder: (ctx, i) => OrderItem(orders.orders[i]),
      ),
    );
  }
}
