import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/material.dart';
import 'package:unit_converter/calculator.dart';
import 'package:unit_converter/weight_list.dart';
import 'controllers/weightcontroller.dart';

class WeightConverter extends StatefulWidget {
  @override
  State createState() => new WeightConverterState();
}

class WeightConverterState extends State<WeightConverter> {
  //reserve space to display ads.
  var adPlaceHeight = 50;
  bool isChanged = false;
  String unitFromName = "Kilogram",
      unitToName = "Gram",
      unitFromShortName = "[kg]",
      unitToShortName = "[g]",
      resultValue = "1000",
      units = "";
  int unitFrom, unitTo;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //APPBAR
      appBar: new AppBar(
        title: new Text(
          "Weight Converter",
        ),
        elevation: 0,
      ),
      backgroundColor: Color(0xffEFEFEF),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                child: fromUnitBox(),
              ),
              new Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: toUnitBox(),
              ),
              keypadContainer(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    units = "1";
    unitFrom = 2;
    unitTo = 3;
    performCalculation();
  }

  Container buttonsRow1Container(buttonHeight, buttonWidth) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayIcon(Icons.list),
              onPressed: () => setState(
                () {},
              ),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayIcon(Icons.star_border),
              onPressed: () => setState(
                () {},
              ),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("C"),
              onPressed: clearFields,
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayIcon(Icons.backspace),
              onPressed: backSpace,
            ),
          ),
        ],
      ),
    );
  }

  Container buttonsRow2Container(buttonHeight, buttonWidth) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("7"),
              onPressed: () => setState(() {
                getUserInput("7");
              }),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("8"),
              onPressed: () => setState(() {
                getUserInput("8");
              }),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("9"),
              onPressed: () => setState(() {
                getUserInput("9");
              }),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayIcon(Icons.content_copy),
              onPressed: () {
                ClipboardManager.copyToClipBoard(resultValue);
              },
            ),
          ),
        ],
      ),
    );
  }

  Container buttonsRow3Container(buttonHeight, buttonWidth) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("4"),
              onPressed: () => setState(() {
                getUserInput("4");
              }),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("5"),
              onPressed: () => setState(() {
                getUserInput("5");
              }),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("6"),
              onPressed: () => setState(() {
                getUserInput("6");
              }),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayIcon(Icons.refresh),
              onPressed: () => setState(() {}),
            ),
          ),
        ],
      ),
    );
  }

  Container buttonsRow4Container(buttonHeight, buttonWidth) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("1"),
              onPressed: () => setState(() {
                getUserInput("1");
              }),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("2"),
              onPressed: () => setState(
                () {
                  getUserInput("2");
                },
              ),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("3"),
              onPressed: () => setState(
                () {
                  getUserInput("3");
                },
              ),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayIcon(Icons.share),
              onPressed: () => setState(
                () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buttonsRow5Container(buttonHeight, buttonWidth) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("+/-"),
              onPressed: () => setState(
                () {},
              ),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("0"),
              onPressed: () => setState(
                () {
                  getUserInput("0");
                },
              ),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("."),
              onPressed: () => setState(() {
                getUserInput(".");
              }),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: Color(0xFF140BB5),
              child: Image.asset("assets/icons/calculator.png"),
              onPressed: () => setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Calculator(),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Column keypadContainer() {
    double buttonHeight =
        (MediaQuery.of(context).size.height - adPlaceHeight) / 9.2;
    double buttonWidth = MediaQuery.of(context).size.width / 4.1;
    return Column(
      children: <Widget>[
        buttonsRow1Container(buttonHeight, buttonWidth),
        Padding(padding: EdgeInsets.only(top: 1.4)),
        buttonsRow2Container(buttonHeight, buttonWidth),
        Padding(padding: EdgeInsets.only(top: 1.4)),
        buttonsRow3Container(buttonHeight, buttonWidth),
        Padding(padding: EdgeInsets.only(top: 1.4)),
        buttonsRow4Container(buttonHeight, buttonWidth),
        Padding(padding: EdgeInsets.only(top: 1.4)),
        buttonsRow5Container(buttonHeight, buttonWidth),
      ],
    );
  }

  Container fromUnitBox() {
    return Container(
      height: (MediaQuery.of(context).size.height - adPlaceHeight) / 8.1,
      decoration: new BoxDecoration(
        color: Color(0xFF140BB5),
        borderRadius: new BorderRadius.all(Radius.circular(7.0)),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Expanded(
                  flex: 0,
                  child: Text(
                    "From",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                new Expanded(
                  child: Text(
                    '$units',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            new Padding(
              padding: EdgeInsets.only(top: 3.3),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                // new Expanded(
                //   child: Text(
                //     unitFromShortName,
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 18,
                //       fontWeight: FontWeight.w400,
                //     ),
                //   ),
                // ),
                new Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/down_arrow.png"),
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        padding: EdgeInsets.only(right: 30),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        child: Text(
                          unitFromName,
                          style: TextStyle(fontSize: 16),
                        ),
                        textColor: Colors.white,
                        onPressed: () {
                          _navigateAndSelectFromUnit(context);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container toUnitBox() {
    return Container(
      height: (MediaQuery.of(context).size.height - adPlaceHeight) / 8.1,
      decoration: new BoxDecoration(
        color: Color(0xFF140BB5),
        borderRadius: new BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Expanded(
                  flex: 0,
                  child: Text(
                    "To",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                new Expanded(
                  child: Text(
                    resultValue,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
            new Padding(
              padding: EdgeInsets.only(top: 3.3),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                // new Expanded(
                //   child: Text(
                //     unitFromShortName,
                //     style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 18,
                //       fontWeight: FontWeight.w400,
                //     ),
                //   ),
                // ),
                new Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/down_arrow.png"),
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      FlatButton(
                        padding: EdgeInsets.only(right: 30),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        child: Text(
                          unitToName,
                          style: TextStyle(fontSize: 16),
                        ),
                        textColor: Colors.white,
                        onPressed: () {
                          _navigateAndSelectToUnit(context);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void getUserInput(String inputValue) {
    setState(() {
      if (!isChanged) {
        units = "";
        isChanged = true;
      }
      if (inputValue == ".") {
        if (!units.contains(".")) {
          units = units + inputValue;
        }
      } else {
        units = units + inputValue;
      }
      units = units;
      performCalculation();
    });
  }

  void clearFields() {
    setState(() {
      isChanged = false;
      resultValue = "1000";
      units = "1";
      unitFromName = "Kilogram";
      unitToName = "Gram";
    });
  }

  void performCalculation() {
    double unitsToConvert = double.parse(units);
    setState(
      () {
        resultValue =
            convertWeightUnit(unitsToConvert, unitFrom, unitTo).toString();
        RegExp regex = RegExp(r"([.]*0)(?!.*\d)");
        resultValue = resultValue.replaceAll(regex, '');
      },
    );
  }

  void backSpace() {
    setState(() {
      units = (units.length > 0) ? (units.substring(0, units.length - 1)) : "";
      if (units != "")
        performCalculation();
      else
        resultValue = "";
    });
  }

  _navigateAndSelectToUnit(BuildContext context) async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WeightList(),
      ),
    ).then(
      (value) {
        setState(
          () {
            var toWeightUnit =
                weightUnits.where((unit) => unit['id'] == value).first;
            unitToName = toWeightUnit['name'];
            unitToShortName = toWeightUnit['unit'];
            unitTo = value;
            performCalculation();
          },
        );
      },
    );
  }

  _navigateAndSelectFromUnit(BuildContext context) async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WeightList(),
      ),
    ).then(
      (value) {
        setState(
          () {
            var fromWeightUnit =
                weightUnits.where((unit) => unit['id'] == value).first;
            unitFromName = fromWeightUnit['name'];
            unitFromShortName = fromWeightUnit['unit'];
            unitFrom = value;
            print(unitFromName);
            performCalculation();
          },
        );
      },
    );
  }

  //text field
  Text displayText(text) {
    return Text(text, style: textStyle);
  }

  //display icon
  Icon displayIcon(IconData iconData) {
    return Icon(iconData, color: Color(0xFF140BB5), size: 35.0);
  }

  //theme data
  TextStyle textStyle = TextStyle(fontSize: 35, color: Color(0xFF140BB5));
  Color colorWhite = Colors.white;
}
