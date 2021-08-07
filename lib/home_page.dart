import 'package:flutter/material.dart';
import 'package:learn_animations/screens/animated_container.dart';
import 'package:learn_animations/screens/chart.dart';
import 'package:learn_animations/screens/cross_fade.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations Done"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext ctx) => Chart()));
            },
            child: Text("CHART"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext ctx) => AnimatedContainer1()));
            },
            child: Text("Animated Container"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext ctx) => CrossFade()));
            },
            child: Text("Cross Fade"),
          ),
        ],
      ),
    );
  }
}
