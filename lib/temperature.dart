import 'package:flutter/material.dart';

class TemperatureConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Converter'),
      ),
      body: Center(
        child: Text(
          'Temperature Calculator',
        ),
      ),
    );
  }
}
