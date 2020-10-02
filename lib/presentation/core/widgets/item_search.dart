import 'package:flutter/material.dart';

abstract class ItemSearch<T> extends SearchDelegate<T> {
  final List<T> items;
  ItemSearch(this.items);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return build(context, query, _filterItems(query, items));
  }

  List<T> _filterItems(String query, List<T> items) {
    return items.where((item) => filter(query, item)).toList();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return build(context, query, _filterItems(query, items));
  }

  Widget build(BuildContext context, String query, List<T> items);
  bool filter(String query, T item);

  @override
  ThemeData appBarTheme(BuildContext context) => Theme.of(context);
}
