import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  static Widget generateRoute() {
    return ProductScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
    );
  }
}
