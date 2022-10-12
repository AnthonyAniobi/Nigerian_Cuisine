import 'package:flutter/material.dart';
import 'package:nigerian_cuisine/models/food_cache.dart';
import 'package:nigerian_cuisine/resources/food_list.dart';
import 'package:nigerian_cuisine/resources/snack_list.dart';
import 'package:nigerian_cuisine/screens/search_result/widgets/search_item_tile.dart';

class SearchResult extends StatelessWidget {
  final String searchTerm;
  final List<FoodCache> searchResult = [];

  SearchResult({super.key, required this.searchTerm}) {
    // perform search
    // food search
    for (int i = 0; i < FoodList.list.length; i++) {
      if (FoodList.list[i].name
          .toLowerCase()
          .contains(searchTerm.toLowerCase())) {
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
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Search Results',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        const SizedBox(height: 10),
        Expanded(child: _SearchResultWidget(searchResult: searchResult))
      ]),
    );
  }
}

class _SearchResultWidget extends StatelessWidget {
  const _SearchResultWidget({
    Key? key,
    required this.searchResult,
  }) : super(key: key);

  final List<FoodCache> searchResult;

  @override
  Widget build(BuildContext context) {
    return searchResult.isEmpty
        ? Center(
            child: Text(
              'No Food found!',
              style: Theme.of(context).textTheme.headline5,
            ),
          )
        : ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: searchResult.length,
            itemBuilder: ((context, index) =>
                SearchItemTile(foodCache: searchResult[index])),
          );

    // Column(
    //     children: searchResult
    //         .map((FoodCache foodCache) =>
    //             SearchItemTile(foodCache: foodCache))
    //         .toList(),
    //   );
  }
}
