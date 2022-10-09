import 'package:flutter/material.dart';
import 'package:nigerian_cuisine/resources/food_list.dart';
import 'package:nigerian_cuisine/resources/snack_list.dart';

class SnackCard extends StatelessWidget {
  final SnackList snack;
  const SnackCard({
    Key? key,
    required this.snack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              image: AssetImage(snack.imageId))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              snack.name,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white),
            ),
            const Spacer(),
            Text(
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              snack.description,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
