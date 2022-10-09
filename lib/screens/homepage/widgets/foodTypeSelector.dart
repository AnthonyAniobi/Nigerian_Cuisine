import 'package:flutter/material.dart';

class FoodTypeSelector extends StatefulWidget {
  const FoodTypeSelector({
    Key? key,
  }) : super(key: key);

  @override
  State<FoodTypeSelector> createState() => _FoodTypeSelectorState();
}

class _FoodTypeSelectorState extends State<FoodTypeSelector> {
  _Types _selectedType = _Types.food;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: Row(
          children: [
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
            // Expanded(child: Container()),
          ],
        ),
      ),
    );
  }

  InkWell _foodTypeButton(_Types type, IconData icon) {
    return InkWell(
      onTap: () {
        setState(() {
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
          color: selected ? Colors.black : Colors.grey.shade300),
      child: Icon(
        icon,
        size: 40,
        color: selected ? Colors.white : Colors.grey,
      ),
    );
  }
}
