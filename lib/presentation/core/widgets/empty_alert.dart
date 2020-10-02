import 'package:flutter/material.dart';

class EmptyAlert extends StatelessWidget {
  final IconData icon;
  final String statement;

  const EmptyAlert({Key key, @required this.icon, @required this.statement})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 140,
            color: Colors.grey[700],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            statement,
            style: TextStyle(fontSize: 20, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
