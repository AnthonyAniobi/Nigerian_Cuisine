import 'package:flutter/material.dart';
import 'package:nigerian_cuisine/models/meal_time.dart';
import 'package:nigerian_cuisine/resources/restaurant_list.dart';
import 'package:nigerian_cuisine/screens/homepage/widgets/food_type_selector.dart';
import 'package:nigerian_cuisine/screens/homepage/widgets/restaurant_card.dart';
import 'package:nigerian_cuisine/screens/search_result/search_result.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  final TextEditingController searchController = TextEditingController();

  void search(BuildContext context, String text) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SearchResult(
                  searchTerm: text,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            MealTime.currentMeal(),
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              filled: true,
              suffixIcon: IconButton(
                  onPressed: () {
                    search(context, searchController.text);
                  },
                  icon: const Icon(Icons.search)),
              hintText: 'Search Food...',
              hintStyle: Theme.of(context).textTheme.bodyMedium,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: const BorderSide(color: Colors.grey, width: 1.0),
              ),
            ),
            onSubmitted: (value) {
              search(context, value);
            },
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
