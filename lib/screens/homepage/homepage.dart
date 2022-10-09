import 'package:flutter/material.dart';
import 'package:nigerian_cuisine/resources/restaurant_list.dart';
import 'package:nigerian_cuisine/screens/homepage/widgets/foodTypeSelector.dart';
import 'package:nigerian_cuisine/screens/homepage/widgets/restaurantCard.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Hi Excel!',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'What food do you want to cook',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Colors.red,
          ),
        ),
        const SizedBox(height: 10),
        const FoodTypeSelector(),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Restaurants',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.builder(
            itemCount: Restaurants.list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => RestaurantCard(
              restaurant: Restaurants.list[index],
            ),
          ),
        ),
      ],
    );
  }
}
