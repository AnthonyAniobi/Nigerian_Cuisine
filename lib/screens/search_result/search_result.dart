import 'package:flutter/material.dart';
import 'package:nigerian_cuisine/models/food_cache.dart';
import 'package:nigerian_cuisine/resources/food_list.dart';
import 'package:nigerian_cuisine/resources/snack_list.dart';

class SearchResult extends StatelessWidget {
  final String searchTerm;
  final List<FoodCache> searchResult = [];

  SearchResult({super.key, required this.searchTerm}) {
    // perform search
    // food search
    for (int i = 0; i < FoodList.list.length; i++) {
      if (FoodList.list[i].name.contains(searchTerm)) {
        searchResult.add(FoodCache(index: i, type: FoodCacheType.food));
      }
    }
    // drink search
    for (int i = 0; i < SnackList.list.length; i++) {
      if (SnackList.list[i].name.contains(searchTerm)) {
        searchResult.add(FoodCache(index: i, type: FoodCacheType.snack));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
