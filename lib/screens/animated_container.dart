import 'package:flutter/material.dart';

class AnimatedContainer1 extends StatefulWidget {
  AnimatedContainer1({Key? key}) : super(key: key);

  @override
  _Animation1State createState() => _Animation1State();
}

class _Animation1State extends State<AnimatedContainer1> {
  Duration _animationDuration = Duration(milliseconds: 1000);

  Color _backgroundColor = Colors.blueGrey;

  double _height = 300;

  double _width = 300;

  double _borderWidth = 300;

  double _borderRadius = 10;

  double _padding = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animation one")),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          AnimatedContainer(
            duration: _animationDuration,
            height: _height,
            width: _width,
            padding: EdgeInsets.all(_padding),
            decoration: BoxDecoration(
              color: _backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
            ),
            child: FlutterLogo(),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
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
                      _height = 200;
                      _width = 200;
                      _borderRadius = 30;
                      _backgroundColor = Colors.red;
                      _padding = 10;
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
                      _height = 300;
                      _width = 300;
                      _borderRadius = 10;
                      _backgroundColor = Colors.blueGrey;
                      _padding = 50;
                    });
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
