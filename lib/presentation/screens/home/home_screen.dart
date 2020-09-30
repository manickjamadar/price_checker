import 'package:flutter/material.dart';
import 'package:price_checker/presentation/screens/products/products_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      appBar: AppBar(
        title: Text("Customers"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.local_mall),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => ProductScreen.generateRoute())),
          )
        ],
      ),
    );
  }
}
