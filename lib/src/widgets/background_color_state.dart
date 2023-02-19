import 'dart:math';
import 'package:flutter/material.dart';

///Stateful widget to generate the Background Color
class BackgroundColorState extends StatefulWidget {
  @override
  _BackgroundColorGenerator createState() => _BackgroundColorGenerator();
}

class _BackgroundColorGenerator extends State<StatefulWidget> {
  Color color = Colors.cyan;
  Color randomGeneratedColor = Colors.black;

  @override
  void initState() {
    super.initState();
  }

  void generateRandomColor() {
    final _random = Random();
    const rangeToGenerateColors = 256;

    //randomly set values for properties "R", "G", "B" and "O - opacity"
    //with the Random generator from flutter
    randomGeneratedColor = Color.fromRGBO(
      _random.nextInt(rangeToGenerateColors),
      _random.nextInt(rangeToGenerateColors),
      _random.nextInt(rangeToGenerateColors),
      _random.nextDouble(),
    );

    setState(() {
      color = randomGeneratedColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => generateRandomColor(),
        child: const Center(
          child: Text(
            'Hey there',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
