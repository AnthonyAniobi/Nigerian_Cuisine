import 'package:flutter/material.dart';
import 'package:nigerian_cuisine/models/abstract_food.dart';
import 'package:nigerian_cuisine/models/food_cache.dart';
import 'package:nigerian_cuisine/resources/food_list.dart';
import 'package:nigerian_cuisine/resources/snack_list.dart';
import 'package:nigerian_cuisine/screens/food_details/food_details.dart';

class FoodCard extends StatelessWidget {
  final AbstractFoodList food;
  final int foodIndex;
  const FoodCard({
    Key? key,
    required this.food,
    required this.foodIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FoodCacheType foodType = FoodCacheType.drink;
        if (food is FoodList) {
          foodType = FoodCacheType.food;
        } else if (food is SnackList) {
          foodType = FoodCacheType.snack;
        }

        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FoodDetails(
                    foodCache: FoodCache(index: foodIndex, type: foodType))));
      },
      child: Hero(
        tag: food.imageId,
        child: Container(
          height: 200,
          width: 200,
          margin: const EdgeInsets.fromLTRB(20, 10, 10, 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    blurRadius: 5,
                    color: Colors.black.withOpacity(0.5),
                    offset: const Offset(2, 3))
              ],
              image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.darken),
                  image: AssetImage(food.imageId))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  food.name,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white),
                ),
                const Spacer(),
                Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  food.description,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
