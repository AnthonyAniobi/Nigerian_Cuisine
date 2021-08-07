import 'package:flutter/material.dart';

class CrossFade extends StatefulWidget {
  const CrossFade({Key? key}) : super(key: key);

  @override
  _CrossFadeState createState() => _CrossFadeState();
}

class _CrossFadeState extends State<CrossFade> {
  Duration _animationDuration = Duration(milliseconds: 1000);

  bool _isShowingFirstWidget = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cross Fade'),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          AnimatedCrossFade(
            firstCurve: Curves.bounceIn,
            secondCurve: Curves.bounceOut,
            firstChild: FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 300.0,
            ),
            secondChild: FlutterLogo(
              style: FlutterLogoStyle.stacked,
              size: 300.0,
            ),
            crossFadeState: _isShowingFirstWidget
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: _animationDuration,
          ),
          SizedBox(height: 50),
          _buildButtons(),
        ],
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
                _isShowingFirstWidget = true;
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
                _isShowingFirstWidget = false;
              });
            },
          ),
        )
      ],
    );
  }
}
