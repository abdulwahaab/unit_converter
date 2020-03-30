import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Converter'),
      ),
      body: Center(
        child: Text(
          'Currency Calculator',
        ),
      ),
    );
  }
}
