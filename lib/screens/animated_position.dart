import 'package:flutter/material.dart';

class AnimatedPositioned1 extends StatefulWidget {
  const AnimatedPositioned1({Key? key}) : super(key: key);

  @override
  _AnimatedPositioned1State createState() => _AnimatedPositioned1State();
}

class _AnimatedPositioned1State extends State<AnimatedPositioned1> {
  Duration _animationDuration = Duration(milliseconds: 1000);

  double _top = 20.0;
  double _right = 20.0;
  double _bottom = 20.0;
  double _left = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Position"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              width: 300,
              height: 300,
              child: Stack(
                children: [
                  AnimatedPositioned(
                    child: Container(
                      color: Colors.red,
                      height: 50,
                      width: 50,
                      child: FlutterLogo(),
                    ),
                    duration: _animationDuration,
                    top: _top,
                    right: _right,
                    bottom: _bottom,
                    left: _left,
                  ),
                ],
              ),
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
                _top = 0;
                _right = 0;
                _bottom = 100;
                _left = 200;
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
                _top = 20;
                _right = 20;
                _bottom = 20;
                _left = 20;
              });
            },
          ),
        )
      ],
    );
  }
}
