import 'package:flutter/material.dart';
import 'package:price_checker/presentation/screens/home/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Price Checker",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          accentColor: Colors.green,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.green)),
      themeMode: ThemeMode.dark,
      home: HomeScreen(),
    );
  }
}
