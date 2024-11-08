import 'package:flutter/material.dart';

class V0 extends StatefulWidget {
  @override
  State<V0> createState() => _V0State();
}

class _V0State extends State<V0> {
  double _red = 0.0;
  double _blue = 0.0;
  double _green = 0.0;


  _onChangeRed(double value) {
    setState(() {
      _red = value;
    });
  }

  _onChangeBlue(double value) {
    setState(() {
      _blue = value;
    });
  }

  _onChangeGreen(double value) {
    setState(() {
      _green = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Color.fromRGBO(_red.toInt(), _blue.toInt(), _green.toInt(), 1),
          ),
        ),
        const Padding(
          padding:  EdgeInsets.symmetric(vertical: 50.0)
        ),
        Row(
          children: [
            const Text("Red: "),
            Text(_red.toInt().toString(), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(value: _red, min: 0, max: 255, onChanged: _onChangeRed),
        Row(
          children: [
            const Text("Blue: "),
            Text(_blue.toInt().toString(), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(value: _blue, min: 0, max: 255, onChanged: _onChangeBlue),
        Row(
          children: [
            const Text("Green: "),
            Text(_green.toInt().toString(), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(value: _green, min: 0, max: 255, onChanged: _onChangeGreen),
      ],
    );
  }
}