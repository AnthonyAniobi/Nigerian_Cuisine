import 'package:flutter/material.dart';

class PhysicalModel1 extends StatefulWidget {
  const PhysicalModel1({Key? key}) : super(key: key);

  @override
  _PhysicalModel1State createState() => _PhysicalModel1State();
}

class _PhysicalModel1State extends State<PhysicalModel1> {
  int _animationDuration = 1000;

  Color _widgetColor = Colors.blue;
  double _elevation = 10;
  Color _shadowColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Physical Model"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 50),
            AnimatedPhysicalModel(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 300,
                width: 300,
                child: FlutterLogo(),
              ),
              shape: BoxShape.rectangle,
              elevation: _elevation,
              color: _widgetColor,
              shadowColor: _shadowColor,
              duration: Duration(milliseconds: _animationDuration),
            ),
            SizedBox(height: 50),
            _buildButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: Colors.grey,
          child: IconButton(
            color: Colors.grey,
            icon: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {
                _widgetColor = Colors.yellow;
                _elevation = 30;
                _shadowColor = Colors.yellow;
              });
            },
          ),
        ),
        Container(
          color: Colors.grey,
          child: IconButton(
            icon: Icon(
              Icons.replay_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {
                _widgetColor = Colors.blue;
                _elevation = 10;
                _shadowColor = Colors.blue;
              });
            },
          ),
        )
      ],
    );
  }
}
