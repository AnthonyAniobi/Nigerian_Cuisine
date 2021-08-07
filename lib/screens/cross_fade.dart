import 'package:flutter/material.dart';

class CrossFade extends StatefulWidget {
  const CrossFade({Key? key}) : super(key: key);

  @override
  _CrossFadeState createState() => _CrossFadeState();
}

class _CrossFadeState extends State<CrossFade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cross Fade'),
      ),
      body: Container(),
    );
  }
}
