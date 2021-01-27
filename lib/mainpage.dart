import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _counter = 0;
  int groupValue;
  var primaryColor = Color.fromRGBO(243, 246, 254, 1);
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;
  int _s = 0;
  var age = 50.0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                child: Image(image: AssetImage('images/headerimages.jpg')),
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 110,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height - 110,
              child: Neumorphic(
                style: NeumorphicStyle(
                  color: primaryColor,
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
                  lightSource: LightSource.top,
                ),
                child: ListView(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(width: 40),
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.lightBlueAccent,
                        ),
                        SizedBox(width: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Good Job!", style: textStyleNormal()),
                            SizedBox(height: 5),
                            Text("You have  been", style: textStyleSmall()),
                            Text("mindful for 2:52 in",
                                style: textStyleSmall()),
                            Text("7:00 session", style: textStyleSmall()),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    getFirstContainer(),
                    SizedBox(height: 20),
                    getSecondContainer(),
                    SizedBox(height: 20),
                    getThirdColumn(),
                    SizedBox(height: 15),

                  ],
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 9,
              child: Icon(Icons.close, color: Colors.white),
            ),
            Positioned(
              top: 40,
              right: 9,
              child: Icon(Icons.more_vert, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  getContainer({Widget child}) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: primaryColor,
          boxShadow: [
            BoxShadow(
                offset: Offset(5, 5),
                color: Colors.grey.withOpacity(0.55),
                blurRadius: 20),
            BoxShadow(
                offset: Offset(-10, -10), color: Colors.white, blurRadius: 15),
          ]),
      child: child,
    );
  }

  getFirstColumnRows(var color, String text1, String text2) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7),
      child: Row(
        children: <Widget>[
          SizedBox(width: 33),
          CircleAvatar(
            radius: 6,
            backgroundColor: color,
          ),
          SizedBox(width: 14),
          Flexible(
              fit: FlexFit.tight,
              child: Text(text1,
                  style: textStyleSmall(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1)),
          Text(text2, style: textStyleSmall()),
        ],
      ),
    );
  }

  getFirstContainer() {
    return getContainer(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Session Breakdown",
                  style: textStyleHeading()),
              Spacer(),
              Icon(Icons.error_outline)
            ],
          ),
          SizedBox(height: 15),
          Container(
            child: Row(
              children: <Widget>[
                Icon(Icons.remove_circle_outline, size: 25),
                SizedBox(width: 8),
                Flexible(
                    fit: FlexFit.tight,
                    child: Text("Total Mindful Minutes",
                        style: textStyleSmall(bold: true),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1)),
                Text("2:52 min",
                    style: textStyleSmall(bold: true)),
              ],
            ),
          ),
          getFirstColumnRows(Colors.lightBlueAccent, "Breathing", "1:30 min"),
          getFirstColumnRows(Colors.pinkAccent.shade100, "Relaxation", "1:00 min"),
          getFirstColumnRows(Colors.greenAccent, "Focus", "0:22 min"),
        ],
      ),
    );
  }

  getSecondContainer() {
    return getContainer(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Analysis",
                  style: textStyleHeading()),
              Spacer(),
              Icon(Icons.error_outline)
            ],
          ),
          SizedBox(height: 10),
          getSecondColumnRows(Icons.calendar_today, "Breathing", "15%"),
          getSecondColumnRows(Icons.arrow_drop_down_circle, "Mindfulness Index", "47%", ),
          getSecondColumnRows(Icons.timeline, "Avg. Heart Rate", "78 BMP"),
        ],
      ),
    );
  }

  getSecondColumnRows(var icon, String text1, String text2) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7),
      child: Row(
        children: <Widget>[
          Icon(icon, size: 15),
          SizedBox(width: 10),
          Flexible(
              fit: FlexFit.tight,
              child: Text(text1,
                  style: textStyleSmall(bold: true),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1)),
          Text(text2, style: textStyleSmall(bold: true)),
        ],
      ),
    );
  }

  getThirdColumn() {
    return getContainer(
      child: Column(
        children: <Widget>[
          Text("How do you feel about the post session?", style: textStyleHeading()),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Text("Relaxed", style: textStyleSmall(color: Colors.grey), overflow: TextOverflow.ellipsis),
              ),
              Flexible(
                flex: 1,
                child: Text("Focused", style: textStyleSmall(color: Colors.grey), overflow: TextOverflow.ellipsis),
              ),
              Flexible(
                flex: 1,
                child: Text("None of these", style: textStyleSmall(color: Colors.grey), overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
        ],
      )
    );
  }
}

textStyleHeading() {
  return TextStyle(
      color: Colors.black, fontWeight: FontWeight.w500, fontSize: 17);
}

textStyleNormal() {
  return TextStyle(
      color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15);
}

textStyleSmall({bool bold = false, color = Colors.black}) {
  return TextStyle(
      color: color,
      fontWeight: (bold) ? FontWeight.w700 : FontWeight.w400,
      fontSize: 14);
}
