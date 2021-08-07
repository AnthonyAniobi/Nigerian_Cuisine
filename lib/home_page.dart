import 'package:flutter/material.dart';
import 'package:learn_animations/screens/animated_container.dart';
import 'package:learn_animations/screens/animated_opacity.dart';
import 'package:learn_animations/screens/animated_physical_model.dart';
import 'package:learn_animations/screens/animated_position.dart';
import 'package:learn_animations/screens/chart.dart';
import 'package:learn_animations/screens/cross_fade.dart';
import 'package:learn_animations/screens/default_text_style.dart';

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
          _moveScreen(context, 'CHART', Chart()),
          _moveScreen(context, 'Animated Container', AnimatedContainer1()),
          _moveScreen(context, 'Cross Fade', CrossFade()),
          _moveScreen(context, 'Default Text Animation', DefaultTextStyle1()),
          _moveScreen(context, 'Animated Opacity', AnimatedOpacity1()),
          _moveScreen(context, 'Animated Physical Model', PhysicalModel1()),
          _moveScreen(context, 'Animated Positioned', AnimatedPositioned1()),
        ],
      ),
    );
  }

  Widget _moveScreen(BuildContext context, String text, page) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (BuildContext ctx) => page));
      },
      child: Text(text),
    );
  }
}
