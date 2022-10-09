import 'package:flutter/material.dart';
import 'package:nigerian_cuisine/resources/food_list.dart';

class SearchResult extends StatelessWidget {
  final List? foodList;
  final List? snackList;

  const SearchResult({super.key, this.foodList, this.snackList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(),
    );
  }
}
