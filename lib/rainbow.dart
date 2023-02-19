import 'package:flutter/material.dart';
import 'package:flutter_rainbow/src/widgets/background_color_state.dart';

void main() => runApp(const Rainbow());

/// Rainbow initialization.
class Rainbow extends StatelessWidget {
  ///initiate rainbow project
  const Rainbow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rainbow App',
      home: Scaffold(
        body: Center(child: BackgroundColorState()),
      ),
    );
  }
}
