enum FoodCacheType { food, drink, snack }

class FoodCache {
  final int index;
  final FoodCacheType type;

  FoodCache({required this.index, required this.type});
}
