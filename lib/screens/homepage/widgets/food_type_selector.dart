import 'package:flutter/material.dart';
import 'package:nigerian_cuisine/resources/food_list.dart';
import 'package:nigerian_cuisine/resources/snack_list.dart';
import 'package:nigerian_cuisine/screens/homepage/widgets/food_card.dart';
import 'package:nigerian_cuisine/screens/homepage/widgets/snack_card.dart';

class FoodTypeSelector extends StatefulWidget {
  const FoodTypeSelector({
    Key? key,
  }) : super(key: key);

  @override
  State<FoodTypeSelector> createState() => _FoodTypeSelectorState();
}

class _FoodTypeSelectorState extends State<FoodTypeSelector> {
  _Types _selectedType = _Types.food;
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          _gridviewBuilder(),
          SizedBox(
            width: 70,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _foodTypeButton(_Types.food, Icons.dinner_dining),
                  _foodTypeButton(_Types.snack, Icons.lunch_dining),
                  _foodTypeButton(_Types.drink, Icons.local_drink),
                ]),
          ),
        ],
      ),
    );
  }

  Widget _gridviewBuilder() {
    if (_selectedType == _Types.food) {
      return GridView.builder(
          controller: scrollController,
          padding: const EdgeInsets.only(left: 50),
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: FoodList.list.length,
          itemBuilder: ((context, index) =>
              FoodCard(foodIndex: index, food: FoodList.list[index])));
    } else if (_selectedType == _Types.snack) {
      return GridView.builder(
          controller: scrollController,
          padding: const EdgeInsets.only(left: 50),
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: FoodList.list.length,
          itemBuilder: ((context, index) =>
              SnackCard(snack: SnackList.snacks[index])));
    } else {
      return Center(
        child: Text(
          "No drinks available",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      );
    }
  }

  InkWell _foodTypeButton(_Types type, IconData icon) {
    return InkWell(
      onTap: () {
        setState(() {
          if (_selectedType != _Types.drink) scrollController.jumpTo(0);
          _selectedType = type;
        });
      },
      child: _FoodType(
        icon: icon,
        selected: type == _selectedType,
      ),
    );
  }
}

enum _Types { food, snack, drink }

class _FoodType extends StatelessWidget {
  final bool selected;
  final IconData icon;

  const _FoodType({
    Key? key,
    required this.selected,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: selected ? Colors.grey : Colors.black,
              blurRadius: 9,
              offset: const Offset(3, 3),
            )
          ],
          color: selected ? Colors.black : Colors.grey.shade300),
      child: Icon(
        icon,
        size: 40,
        color: selected ? Colors.white : Colors.grey,
      ),
    );
  }
}
