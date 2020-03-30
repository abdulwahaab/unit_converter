import 'package:flutter/material.dart';

void main() => runApp(UnitConverter());

class UnitConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 4,
          children: List.generate(16, (index) {
            return InkResponse(
              enableFeedback: true,
              onTap: () => _onTileClicked(index),
              child: Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.display1,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  void _onTileClicked(var index) {
    debugPrint("You tapped on item $index");
  }
}