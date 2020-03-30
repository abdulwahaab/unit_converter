import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unit_converter/currency.dart';
import 'package:unit_converter/area.dart';
import 'package:unit_converter/weight.dart';
import 'package:unit_converter/volume.dart';
import 'package:unit_converter/length.dart';
import 'package:unit_converter/time.dart';
import 'package:unit_converter/speed.dart';
import 'package:unit_converter/cooking.dart';
import 'package:unit_converter/fuel.dart';
import 'package:unit_converter/temperature.dart';
import 'package:unit_converter/angle.dart';
import 'package:unit_converter/sound.dart';
import 'package:unit_converter/power.dart';
import 'package:unit_converter/data.dart';
import 'package:unit_converter/compass.dart';
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true; // Set to true for visual layout
  runApp(
    MaterialApp(
      title: 'Unit Converter',
      theme: ThemeData(primarySwatch: MaterialColor(0xFF140BB5, color)),
      home: UnitConverter(),
    ),
  );
}

class UnitConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit Converter'),
      ),
      // appBar: GradientAppBar('Unit Converter'),
      body: Padding(
        child: _buildImageColumn(context),
        padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
          children: <Widget>[
            // DrawerHeader(
            //   child: Text('Drawer Header'),
            //   decoration: BoxDecoration(
            //     color: Colors.orange,
            //   ),
            // ),
            ListTile(
              title: Text('Share App'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Rate Us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Remove Ads'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Restore Purchase'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageColumn(BuildContext context) => Container(
        child: Column(
          children: [
            _buildImageRow1(context),
            _buildImageRow2(context),
            _buildImageRow3(context),
            _buildImageRow4(context),
            _buildImageRow5(context),
            // _buildImageRow6(context),
            // _buildImageRow7(context),
          ],
        ),
      );

  Widget _buildDecoratedImage(
          String typeName, String title, BuildContext context) =>
      Expanded(
        child: InkResponse(
          enableFeedback: true,
          onTap: () => _onTileClicked(typeName, context),
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: const BorderRadius.all(const Radius.circular(10)),
            ),
            // width: 120,
            margin: const EdgeInsets.all(7),
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/icons/$typeName.png',
                  scale: 1.8,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(title),
                ),
              ],
            ),
          ),
        ),
      );

  Widget _buildImageRow1(BuildContext context) {
    return Row(
      children: [
        _buildDecoratedImage('weight', 'Weight', context),
        _buildDecoratedImage('currency', 'Currency', context),
        _buildDecoratedImage('area', 'Area', context),
      ],
    );
  }

  Widget _buildImageRow2(BuildContext context) => Row(
        children: [
          _buildDecoratedImage('volume', 'Volume', context),
          _buildDecoratedImage('length', 'Length', context),
          _buildDecoratedImage('time', 'Time', context),
        ],
      );

  Widget _buildImageRow3(BuildContext context) => Row(
        children: [
          _buildDecoratedImage('speed', 'Speed', context),
          _buildDecoratedImage('sound', 'Sound', context),
          _buildDecoratedImage('cooking', 'Cooking', context),
        ],
      );

  Widget _buildImageRow4(BuildContext context) => Row(
        children: [
          _buildDecoratedImage('temperature', 'Temperature', context),
          _buildDecoratedImage('angle', 'Angle', context),
          _buildDecoratedImage('fuel', 'Fuel', context),
        ],
      );

  Widget _buildImageRow5(BuildContext context) => Row(
        children: [
          _buildDecoratedImage('compass', 'Compass', context),
          _buildDecoratedImage('power', 'Power', context),
          _buildDecoratedImage('data', 'Data', context),
        ],
      );

      Widget _buildImageRow6(BuildContext context) => Row(
        children: [
          _buildDecoratedImage('compass', 'Compass', context),
          _buildDecoratedImage('power', 'Power', context),
          _buildDecoratedImage('data', 'Data', context),
        ],
      );

      Widget _buildImageRow7(BuildContext context) => Row(
        children: [
          _buildDecoratedImage('compass', 'Compass', context),
          _buildDecoratedImage('power', 'Power', context),
          _buildDecoratedImage('data', 'Data', context),
        ],
      );

  void _onTileClicked(var typeName, BuildContext context) {
    debugPrint("You tapped on item $typeName");
    var routeName;
    if (typeName == 'currency')
      routeName = CurrencyConverter();
    else if (typeName == 'weight')
      routeName = WeightConverter();
    else if (typeName == 'length')
      routeName = LengthConverter();
    else if (typeName == 'volume')
      routeName = VolumeConverter();
    else if (typeName == 'area')
      routeName = AreaConverter();
    else if (typeName == 'time')
      routeName = TimeConverter();
    else if (typeName == 'speed')
      routeName = SpeedConverter();
    else if (typeName == 'cooking')
      routeName = CookingConverter();
    else if (typeName == 'fuel')
      routeName = FuelConverter();
    else if (typeName == 'temperature')
      routeName = TemperatureConverter();
    else if (typeName == 'angle')
      routeName = AngleConverter();
    else if (typeName == 'sound')
      routeName = SoundConverter();
    else if (typeName == 'data')
      routeName = DataConverter();
    else if (typeName == 'compass')
      routeName = CompassConverter();
    else if (typeName == 'power') routeName = PowerConverter();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => routeName),
    );
  }
}

Map<int, Color> color = {
  50: Color.fromRGBO(53, 74, 147, .1),
  100: Color.fromRGBO(53, 74, 147, .2),
  200: Color.fromRGBO(53, 74, 147, .3),
  300: Color.fromRGBO(53, 74, 147, .4),
  400: Color.fromRGBO(53, 74, 147, .5),
  500: Color.fromRGBO(53, 74, 147, .6),
  600: Color.fromRGBO(53, 74, 147, .7),
  700: Color.fromRGBO(53, 74, 147, .8),
  800: Color.fromRGBO(53, 74, 147, .9),
  900: Color.fromRGBO(53, 74, 147, 1),
};
