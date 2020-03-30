import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  //Text Controllers for taking inputs and showing results

  Color clrAppBar;
  Color clrAppBarText;

  String strInput = "";
  final textControllerInput = TextEditingController();
  final textControllerResult = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //APPBAR
      appBar: new AppBar(
        backgroundColor: clrAppBar,
        title: new Text("Calulator powered by Flutter",
            style: new TextStyle(color: clrAppBarText)),
        elevation: 0,
      ),
      //BODY
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: new TextField(
                decoration: new InputDecoration.collapsed(
                    hintText: "Start calculating"),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  //                          color: Colors.black87
                ),
                textAlign: TextAlign.right,
                controller: textControllerInput,
                onTap: () =>
                    FocusScope.of(context).requestFocus(new FocusNode()),
              ),
            ),
            new Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: new InputDecoration.collapsed(
                    hintText: "Result", fillColor: Colors.deepPurpleAccent),
                textInputAction: TextInputAction.none,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Colors.deepPurpleAccent),
                textAlign: TextAlign.right,
                controller: textControllerResult,
                onTap: () {
                  FocusScope.of(context).requestFocus(new FocusNode());
                },
              ),
            ),
            new Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: new IconButton(
                  icon: Icon(Icons.cancel),
                  color: Colors.deepPurpleAccent,
                  onPressed: () {
                    setState(
                      () {
                        textControllerInput.text = "";
                        textControllerResult.text = "";
                      },
                    );
                  },
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(50)),
            keypadContainer(),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // Start listening to changes
    textControllerInput.addListener(performCalculation);
    textControllerResult.addListener(() {});
  }

  void performCalculation() {
    Parser p = new Parser();
    // Bind variables:
    ContextModel cm = new ContextModel();
    Expression exp = p.parse(textControllerInput.text);
    setState(
      () {
        textControllerResult.text =
            exp.evaluate(EvaluationType.REAL, cm).toString();
      },
    );
  }

  // @override
  // void dispose() {
  //   // Clean up the controller when the Widget is removed from the Widget tree
  //   textControllerInput.dispose();
  //   textControllerResult.dispose();
  //   super.dispose();
  // }

  //This is the first Row of keys
  Row buttonsRow1Container() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new FlatButton(
          child:
              Text("C", style: TextStyle(fontSize: 35, color: Colors.blueGrey)),
          onPressed: () => setState(
            () {
              textControllerInput.text = "";
              textControllerResult.text = "";
            },
          ),
        ),
        new FlatButton(
          child: Icon(
            Icons.list,
            color: Colors.blueGrey,
            size: 35.0,
          ),
          onPressed: () => setState(
            () {
              // textControllerInput.text = textControllerInput.text + "7";
            },
          ),
        ),
        new FlatButton(
          child: Icon(
            Icons.star_border,
            color: Colors.blueGrey,
            size: 35.0,
          ),
          onPressed: () => setState(
            () {
              // textControllerInput.text = textControllerInput.text + "8";
            },
          ),
        ),
        new FlatButton(
          child: Icon(
            Icons.backspace,
            color: Colors.blueGrey,
            size: 35.0,
          ),
          color: Color.fromARGB(50, 119, 96, 204),
          onPressed: () => setState(
            () {
              textControllerInput.text = (textControllerInput.text.length > 0)
                  ? (textControllerInput.text
                      .substring(0, textControllerInput.text.length - 1))
                  : "";
            },
          ),
        ),
      ],
    );
  }

  Row buttonsRow2Container() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new FlatButton(
          child: Text(
            "7",
            style: TextStyle(fontSize: 35, color: Colors.blueGrey),
          ),
          onPressed: () => setState(
            () {
              textControllerInput.text = textControllerInput.text + "7";
            },
          ),
        ),
        new FlatButton(
          child:
              Text("8", style: TextStyle(fontSize: 35, color: Colors.blueGrey)),
          onPressed: () => setState(
            () {
              textControllerInput.text = textControllerInput.text + "8";
            },
          ),
        ),
        new FlatButton(
          child:
              Text("9", style: TextStyle(fontSize: 35, color: Colors.blueGrey)),
          onPressed: () => setState(
            () {
              textControllerInput.text = textControllerInput.text + "9";
            },
          ),
        ),
        new FlatButton(
          child:
              Text("÷", style: TextStyle(fontSize: 35, color: Colors.blueGrey)),
          color: Color.fromARGB(50, 119, 96, 204),
          onPressed: () => setState(
            () {
              textControllerInput.text = textControllerInput.text + "/";
            },
          ),
        ),
      ],
    );
  }

  Row buttonsRow3Container() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new FlatButton(
          child:
              Text("4", style: TextStyle(fontSize: 35, color: Colors.blueGrey)),
          onPressed: () => setState(
            () {
              textControllerInput.text = textControllerInput.text + "4";
            },
          ),
        ),
        new FlatButton(
          child:
              Text("5", style: TextStyle(fontSize: 35, color: Colors.blueGrey)),
          onPressed: () => setState(
            () {
              textControllerInput.text = textControllerInput.text + "5";
            },
          ),
        ),
        new FlatButton(
          child:
              Text("6", style: TextStyle(fontSize: 35, color: Colors.blueGrey)),
          onPressed: () => setState(
            () {
              textControllerInput.text = textControllerInput.text + "6";
            },
          ),
        ),
        new FlatButton(
          child:
              Text("x", style: TextStyle(fontSize: 35, color: Colors.blueGrey)),
          color: Color.fromARGB(50, 119, 96, 204),
          onPressed: () => setState(
            () {
              textControllerInput.text = textControllerInput.text + "*";
            },
          ),
        ),
      ],
    );
  }

  Row buttonsRow4Container() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new FlatButton(
          child:
              Text("1", style: TextStyle(fontSize: 35, color: Colors.blueGrey)),
          onPressed: () => setState(
            () {
              textControllerInput.text = textControllerInput.text + "1";
            },
          ),
        ),
        new FlatButton(
          child:
              Text("2", style: TextStyle(fontSize: 35, color: Colors.blueGrey)),
          onPressed: () => setState(
            () {
              textControllerInput.text = textControllerInput.text + "2";
            },
          ),
        ),
        new FlatButton(
          child:
              Text("3", style: TextStyle(fontSize: 35, color: Colors.blueGrey)),
          onPressed: () => setState(
            () {
              textControllerInput.text = textControllerInput.text + "3";
            },
          ),
        ),
        new FlatButton(
          child:
              Text("-", style: TextStyle(fontSize: 35, color: Colors.blueGrey)),
          color: Color.fromARGB(50, 119, 96, 204),
          onPressed: () => setState(
            () {
              textControllerInput.text = textControllerInput.text + "-";
            },
          ),
        ),
      ],
    );
  }

  Row buttonsRow5Container() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new FlatButton(
          child: Text("+/-",
              style: TextStyle(fontSize: 35, color: Colors.blueGrey)),
          onPressed: () => setState(
            () {
              textControllerInput.text = textControllerInput.text + "0";
            },
          ),
        ),
        new FlatButton(
          child:
              Text("0", style: TextStyle(fontSize: 35, color: Colors.blueGrey)),
          onPressed: () => setState(
            () {
              textControllerInput.text = textControllerInput.text + "0";
            },
          ),
        ),
        new FlatButton(
          child:
              Text(".", style: TextStyle(fontSize: 35, color: Colors.blueGrey)),
          onPressed: () => setState(
            () {
              textControllerInput.text = textControllerInput.text + ".";
            },
          ),
        ),
        new FlatButton(
          child:
              Text("+", style: TextStyle(fontSize: 35, color: Colors.blueGrey)),
          color: Color.fromARGB(50, 119, 96, 204),
          onPressed: () => setState(
            () {
              textControllerInput.text = textControllerInput.text + "+";
            },
          ),
        )
      ],
    );
  }

  //This returns a Column for the keypad
  Column keypadContainer() {
    return Column(
      children: <Widget>[
        buttonsRow1Container(),
        buttonsRow2Container(),
        buttonsRow3Container(),
        buttonsRow4Container(),
        buttonsRow5Container(),
        new Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: new FlatButton(
              child: Text("=",
                  style: TextStyle(fontSize: 35, color: Colors.white)),
              color: Colors.deepPurple,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              onPressed: () {
                //Calculate everything here
                // Parse expression:
                Parser p = new Parser();
                // Bind variables:
                ContextModel cm = new ContextModel();
                Expression exp = p.parse(textControllerInput.text);
                setState(
                  () {
                    textControllerResult.text =
                        exp.evaluate(EvaluationType.REAL, cm).toString();
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
