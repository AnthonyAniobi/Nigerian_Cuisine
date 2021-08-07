import 'package:flutter/material.dart';

class AnimatedOpacity1 extends StatefulWidget {
  const AnimatedOpacity1({Key? key}) : super(key: key);

  @override
  _AnimatedOpacity1State createState() => _AnimatedOpacity1State();
}

class _AnimatedOpacity1State extends State<AnimatedOpacity1> {
  Duration _animationDuration = Duration(milliseconds: 1000);

  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Opacity"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 50),
            AnimatedOpacity(
              duration: _animationDuration,
              opacity: _opacity,
              child: Container(
                color: Colors.blueGrey,
                height: 300,
                width: 300,
                child: FlutterLogo(),
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
                _opacity = 0;
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
                _opacity = 1;
              });
            },
          ),
        )
      ],
    );
  }
}
