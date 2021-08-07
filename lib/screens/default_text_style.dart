import 'package:flutter/material.dart';

class DefaultTextStyle1 extends StatefulWidget {
  const DefaultTextStyle1({Key? key}) : super(key: key);

  @override
  _DefaultTextStyleState createState() => _DefaultTextStyleState();
}

class _DefaultTextStyleState extends State<DefaultTextStyle1> {
  Duration _animationDuration = Duration(milliseconds: 1000);

  TextStyle _textStyle = TextStyle(
    color: Colors.blue,
    fontSize: 30,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Style Animation"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 100),
            AnimatedDefaultTextStyle(
              child: Text(
                'Hello Flutter World!',
                textAlign: TextAlign.center,
              ),
              style: _textStyle,
              duration: _animationDuration,
            ),
            SizedBox(height: 50),
            _buildButtons()
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
                _textStyle = TextStyle(
                  color: Colors.red,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                );
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
                _textStyle = TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                );
              });
            },
          ),
        )
      ],
    );
  }
}
