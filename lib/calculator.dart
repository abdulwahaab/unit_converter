import 'package:clipboard_manager/clipboard_manager.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  @override
  State createState() => new CalculatorState();
}

class CalculatorState extends State<Calculator> {
  //reserve space to display ads.
  var adPlaceHeight = 50;
  bool isChanged = false;
  String resultValue = "Result", inputValue = "Input";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //APPBAR
      appBar: new AppBar(
        title: new Text(
          "Calculator",
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
                child: inputBox(),
              ),
              new Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: resultBox(),
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
    //performCalculation();
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
              child: displayText("C"),
              onPressed: clearFields,
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
              child: displayText("/"),
              onPressed: () => setState(() {
                getUserInput("/");
              }),
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
              onPressed: () => setState(() {
                getUserInput("2");
              }),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("3"),
              onPressed: () => setState(() {
                getUserInput("3");
              }),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("*"),
              onPressed: () => setState(() {
                getUserInput("*");
              }),
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
              child: Icon(
                Icons.backspace,
                color: Color(0xFF140BB5),
                size: 35.0,
              ),
              onPressed: backSpace,
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("0"),
              onPressed: () => setState(() {
                getUserInput("0");
              }),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("+"),
              onPressed: () => setState(() {
                getUserInput("+");
              }),
            ),
          ),
          new ButtonTheme(
            height: buttonHeight,
            minWidth: buttonWidth,
            child: FlatButton(
              color: colorWhite,
              child: displayText("-"),
              onPressed: () => setState(() {
                getUserInput("-");
              }),
            ),
          ),
        ],
      ),
    );
  }

  Column keypadContainer() {
    double buttonHeight =
        (MediaQuery.of(context).size.height - adPlaceHeight) / 6.75;
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
      ],
    );
  }

  Container inputBox() {
    return Container(
      height: (MediaQuery.of(context).size.height - adPlaceHeight) / 10,
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
                  child: Text(
                    inputValue,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container resultBox() {
    return Container(
      height: (MediaQuery.of(context).size.height - adPlaceHeight) / 10,
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
                  child: ButtonTheme(
                    child: FlatButton(
                      child: Icon(
                        Icons.content_copy,
                        color: Colors.white,
                        size: 35.0,
                      ),
                      onPressed: () {
                        ClipboardManager.copyToClipBoard(resultValue);
                      },
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
          ],
        ),
      ),
    );
  }

  void getUserInput(String value) {
    setState(
      () {
        if (!isChanged) {
          inputValue = "";
          isChanged = true;
        }
        if (value == ".") {
          if (!inputValue.contains(".")) {
            inputValue = inputValue + value;
          }
        } else {
          inputValue = inputValue + value;
        }
        inputValue = inputValue;
        performCalculation();
      },
    );
  }

  void clearFields() {
    setState(() {
      isChanged = false;
      inputValue = "Input";
      resultValue = "Result";
    });
  }

  void performCalculation() {
    setState(
      () {
        Parser p = new Parser();
        // Bind variables:
        ContextModel cm = new ContextModel();
        Expression exp = p.parse(inputValue);
        resultValue = exp.evaluate(EvaluationType.REAL, cm).toString();
        //resultValue = resultValue;
      },
    );
  }

  void backSpace() {
    setState(() {
      inputValue = (inputValue.length > 0)
          ? (inputValue.substring(0, inputValue.length - 1))
          : "";
      if (inputValue != "")
        performCalculation();
      else
        resultValue = "";
    });
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
