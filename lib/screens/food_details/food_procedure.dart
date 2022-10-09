import 'package:flutter/material.dart';
import 'package:nigerian_cuisine/resources/food_procedures.dart';

class FoodProcedure extends StatelessWidget {
  final int procedureIndex;

  const FoodProcedure({super.key, required this.procedureIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade700,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Text(
                'GET STARTED !!!',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: 20),
              ListView.builder(
                  padding: const EdgeInsets.all(0),
                  itemCount: FoodProcedures.recipe[procedureIndex].length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: ((context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            index % 2 == 0
                                ? _stepTitle(context, index)
                                : Container(),
                            cookingStep(index, context),
                            index % 2 == 0
                                ? Container()
                                : _stepTitle(context, index),
                          ],
                        ),
                      ))),
              const SizedBox(height: 10),
              Text(
                'THE END',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Expanded cookingStep(int index, BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(3, 3),
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 9)
            ]),
        child: Column(
          children: [
            Text(
              FoodProcedures.recipe[procedureIndex][index].first,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 18,
                  ),
            ),
            AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                FoodProcedures.recipe[procedureIndex][index].imageId,
                fit: BoxFit.fitWidth,
              ),
            ),
            Text(
              FoodProcedures.recipe[procedureIndex][index].second,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 18,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _stepTitle(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            "Step",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            '${index + 1}',
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
