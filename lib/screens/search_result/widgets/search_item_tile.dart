import 'package:flutter/material.dart';
import 'package:nigerian_cuisine/models/abstract_food.dart';
import 'package:nigerian_cuisine/models/food_cache.dart';
import 'package:nigerian_cuisine/resources/food_list.dart';
import 'package:nigerian_cuisine/resources/snack_list.dart';
import 'package:nigerian_cuisine/screens/food_details/food_details.dart';

class SearchItemTile extends StatelessWidget {
  final FoodCache foodCache;
  late AbstractFoodList food;
  SearchItemTile({super.key, required this.foodCache}) {
    if (foodCache.type == FoodCacheType.food) {
      food = FoodList.list[foodCache.index];
    } else {
      food = SnackList.list[foodCache.index];
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FoodDetails(foodCache: foodCache)));
      },
      child: Container(
        height: 100,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: const Offset(3, 3),
              color: Colors.black.withOpacity(0.25),
              blurRadius: 9)
        ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 1,
                child: Image.asset(
                  food.imageId,
                  fit: BoxFit.cover,
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      food.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const Spacer(),
                    Text(
                      food.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
