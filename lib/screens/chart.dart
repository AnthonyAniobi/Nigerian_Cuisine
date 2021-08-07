import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  Chart({Key? key}) : super(key: key);

  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  Duration _animationDuration = Duration(milliseconds: 1000);
  double _barChart1Height = 50;
  double _barChart2Height = 200;
  double _barChart3Height = 100;
  double _padding = 20;

  bool _isLoadingBarChart = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chart"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            AnimatedCrossFade(
                firstChild: Container(
                    height: 400,
                    child: Center(
                      child: CircularProgressIndicator(),
                    )),
                secondChild: _buildCharts(),
                crossFadeState: _isLoadingBarChart
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(milliseconds: 500)),
            SizedBox(height: 20),
            _buildButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildCharts() {
    return Container(
      height: 250,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedContainer(
            duration: _animationDuration,
            height: _barChart1Height,
            width: 50,
            padding: EdgeInsets.all(_padding),
            color: Colors.blue,
            child: Container(),
          ),
          Padding(padding: EdgeInsets.only(right: 10)),
          AnimatedContainer(
            duration: _animationDuration,
            height: _barChart2Height,
            width: 50,
            padding: EdgeInsets.all(_padding),
            color: Colors.orange,
            child: Container(),
          ),
          Padding(padding: EdgeInsets.only(right: 10)),
          AnimatedContainer(
            duration: _animationDuration,
            height: _barChart3Height,
            width: 50,
            padding: EdgeInsets.all(_padding),
            color: Colors.green,
            child: Container(),
          ),
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
                _barChart1Height = 200;
                _barChart2Height = 50;
                _barChart3Height = 150;
                _isLoadingBarChart = true;
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
                _barChart1Height = 50;
                _barChart2Height = 200;
                _barChart3Height = 100;
                _isLoadingBarChart = false;
              });
            },
          ),
        )
      ],
    );
  }
}
