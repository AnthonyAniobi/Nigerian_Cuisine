import 'package:flutter/material.dart';
import 'package:nigerian_cuisine/resources/food_list.dart';
import 'package:nigerian_cuisine/screens/food_details/food_procedure.dart';

class FoodDetails extends StatelessWidget {
  final int foodIndex;
  late FoodList food;
  late List<String> ingredients;
  FoodDetails({super.key, required this.foodIndex}) {
    food = FoodList.list[foodIndex];
    ingredients = food.ingredients.split('\n');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              food.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Hero(
              tag: food.imageId,
              child: Image.asset(
                food.imageId,
                fit: BoxFit.cover,
              )),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) =>
                          FoodProcedure(procedureIndex: foodIndex))));
            },
            child: Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.yellow.shade700,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(3, 3),
                      blurRadius: 9,
                      color: Colors.black.withOpacity(0.25),
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'See procedure',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Icon(Icons.soup_kitchen),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),

          Text(
            'Ingredients',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          // const SizedBox(height: 10),
          Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  itemCount: ingredients.length,
                  itemBuilder: ((context, index) => Card(
                        child: ListTile(
                          title: Text(
                            ingredients[index],
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ))))
        ],
      ),
    );
  }
}
