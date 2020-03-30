import 'package:flutter/material.dart';

class LengthConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Length Converter'),
      ),
      body: new GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: LengthCalculator(),
      ),
    );
  }
}

class LengthCalculatorState extends State<LengthCalculator> {
  int age = 17;
  int weight = 50;

  int height = 180;
  double maxHeight = 220;
  double minHeight = 120;

  ageIncrement() {
    setState(() {
      age++;
    });
  }

  ageDecrement() {
    setState(() {
      age--;
    });
  }

  weightIncrement() {
    setState(() {
      weight++;
    });
  }

  weightDecrement() {
    setState(() {
      weight--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        color: secondary,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    height: MediaQuery.of(context).size.height * 0.355,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: primary,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/male.png',
                          height: 100.0,
                          width: 100.0,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text('MALE', style: headlines)
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    height: MediaQuery.of(context).size.height * 0.355,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: primary,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/female.png',
                          height: 100.0,
                          width: 100.0,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text('FEMALE', style: headlines)
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    height: MediaQuery.of(context).size.height * 0.355,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: primary),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('WEIGHT', style: headlines),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "$weight",
                            style: boldNumber,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: weightDecrement,
                              child: Container(
                                height: 40.0,
                                width: 40.0,
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.orangeAccent,
                                ),
                                child: Center(
                                  child: Text(
                                    "-",
                                    style: secondaryButtonColorStyle,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 40.0,
                              width: 40.0,
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.orangeAccent),
                              child: InkWell(
                                onTap: weightIncrement,
                                child: Center(
                                  child: Text(
                                    "+",
                                    style: secondaryButtonColorStyle,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    height: MediaQuery.of(context).size.height * 0.355,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: primary),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('AGE', style: headlines),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "$age",
                            style: boldNumber,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InkWell(
                              onTap: ageDecrement,
                              child: Container(
                                height: 40.0,
                                width: 40.0,
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.orangeAccent,
                                ),
                                child: Center(
                                  child: Text(
                                    "-",
                                    style: secondaryButtonColorStyle,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 40.0,
                              width: 40.0,
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.orangeAccent,
                              ),
                              child: InkWell(
                                onTap: ageIncrement,
                                child: Center(
                                  child: Text(
                                    "+",
                                    style: secondaryButtonColorStyle,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            InkWell(
              child: Container(
                color: primaryButtonColor,
                margin: EdgeInsets.only(top: 10.0),
                height: MediaQuery.of(context).size.height * 0.1,
                child: Center(
                  child: Text('CALCULATE BMI', style: primaryButtonStyle),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LengthCalculator extends StatefulWidget {
  @override
  LengthCalculatorState createState() => LengthCalculatorState();
}

Color primary = Color.fromRGBO(28, 40, 51, 0.8);
Color secondary = Colors.black;
Color primaryButtonColor = Colors.orangeAccent; //HexColor("e74c3c");
Color secondaryButtonColor = HexColor("212f3c");

TextStyle headlines = TextStyle(
  letterSpacing: 2.0,
  fontSize: 15,
  color: HexColor("d3d3d3"),
);
TextStyle boldNumber = TextStyle(
  color: HexColor("fbfbfb"),
  fontWeight: FontWeight.bold,
  fontSize: 50.0,
);
TextStyle secondaryButtonColorStyle = TextStyle(
  color: secondaryButtonColor,
  fontWeight: FontWeight.bold,
  fontSize: 26.0,
);
TextStyle primaryButtonStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.normal,
  letterSpacing: 1,
  wordSpacing: 2,
  color: secondaryButtonColor,
);
TextStyle resultNumber = TextStyle(
  color: HexColor("fbfbfb"),
  fontWeight: FontWeight.bold,
  fontSize: 80.0,
  letterSpacing: 0.1,
);

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

// Color color1 = HexColor("b74093");
// Color color2 = HexColor("#b74093");
// Color color3 = HexColor("#88b74093");
