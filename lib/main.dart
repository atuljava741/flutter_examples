import 'package:UIDemo/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int groupValue;
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
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              NeumorphicText(
                "I love flutter",
                style: NeumorphicStyle(
                  depth: 4, //customize depth here
                  color: Colors.white, //customize color here
                ),
                textStyle: NeumorphicTextStyle(
                  fontSize: 40, //customize size here
                  // AND others usual text style properties (fontFamily, fontWeight, ...)
                ),
              ),
              SizedBox(height: 20),
              Neumorphic(
                style: NeumorphicStyle(depth: -20),
                child: Container(
                  padding: EdgeInsets.all(18),
                  child: Icon(Icons.map),
                ),
              ),
              SizedBox(height: 10),
              Neumorphic(
                style: NeumorphicStyle(shape: NeumorphicShape.concave),
                child: Container(
                  padding: EdgeInsets.all(18),
                  child: Icon(Icons.map),
                ),
              ),
              SizedBox(height: 10),
              Neumorphic(
                  style: NeumorphicStyle(
                    color: Colors.grey.shade400,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: -20,
                    //intensity: 0,
                    //surfaceIntensity: 0,
                    lightSource: LightSource.topLeft,
                  ),
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text("Text"))),
              SizedBox(height: 10),
              NeumorphicButton(
                onPressed: () {
                  print("onClick");
                },
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.circle(),
                ),
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              NeumorphicIcon(
                Icons.add_circle,
                style: NeumorphicStyle(
                  depth: 3,
                  intensity: 1,
                  //surfaceIntensity: 0,
                  lightSource: LightSource.topLeft,
                ),
                size: 80,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  NeumorphicRadio(
                    groupValue: groupValue,
                    value: 1,
                    onChanged: (v) {
                      setState(() {
                        groupValue = v;
                      });
                    },
                    child: Container(
                        padding: EdgeInsets.all(10), child: Text("10000000")),
                  ),
                  SizedBox(width: 20),
                  NeumorphicRadio(
                    groupValue: groupValue,
                    value: 2,
                    onChanged: (v) {
                      setState(() {
                        groupValue = v;
                      });
                    },
                    child: Container(
                        padding: EdgeInsets.all(10), child: Text("20000000")),
                  ),
                  SizedBox(width: 20),
                  NeumorphicRadio(
                    groupValue: groupValue,
                    value: 3,
                    onChanged: (v) {
                      setState(() {
                        groupValue = v;
                      });
                    },
                    child: Container(
                        padding: EdgeInsets.all(10), child: Text("30000000")),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  NeumorphicCheckbox(
                    value: _isChecked1,
                    onChanged: (v) {
                      setState(() {
                        _isChecked1 = v;
                      });
                    },
                  ),
                  SizedBox(width: 20),
                  NeumorphicCheckbox(
                    value: _isChecked2,
                    onChanged: (v) {
                      setState(() {
                        _isChecked2 = v;
                      });
                    },
                  ),
                  SizedBox(width: 20),
                  NeumorphicCheckbox(
                    value: _isChecked3,
                    onChanged: (v) {
                      setState(() {
                        _isChecked3 = v;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              NeumorphicSwitch(
                value: _isChecked4,
                onChanged: (v) {
                  setState(() {
                    _isChecked4 = v;
                  });
                },
              ),
              SizedBox(height: 20),
              NeumorphicToggle(
                height: 50,
                selectedIndex: _s,
                displayForegroundOnlyIfSelected: true,
                children: [
                  ToggleElement(
                    background: Container(color:Colors.grey,child: Center(child: Text("First", style: TextStyle(fontWeight: FontWeight.w500)))),
                    foreground: Center(child: Text("First", style: TextStyle(fontWeight: FontWeight.w700))),
                  ),
                  ToggleElement(
                    background: Container(color:Colors.grey,child: Center(child: Text("Second", style: TextStyle(fontWeight: FontWeight.w500)))),
                    foreground: Center(child: Text("Second", style: TextStyle(fontWeight: FontWeight.w700))),
                  ),
                  ToggleElement(
                    background: Container(color:Colors.grey,child: Center(child: Text("Third", style: TextStyle(fontWeight: FontWeight.w500)))),
                    foreground: Center(child: Text("Third", style: TextStyle(fontWeight: FontWeight.w700))),
                  )
                ],
                thumb: Neumorphic(
                  style: NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(12)))
                  ),
                ),
                onChanged: (v) {
                  setState(() {
                    _s = v;
                  });
                },
              ),
              SizedBox(height: 20),
              NeumorphicSlider(
                style: SliderStyle(
                  accent: Colors.lightBlueAccent,
                  variant: Colors.yellowAccent,
                ),
                value: age,
                min: 0,
                max: 100,
                onChanged: (v) {
                  setState(() {
                    age = v;
                  });
                },
              ),
              Row(
                children: <Widget>[
                  Spacer(),
                  Text(age.round().toString())
                ],
              ),
              SizedBox(height: 10),
              NeumorphicIndicator(
                height: 20,
                width: 200,
                orientation: NeumorphicIndicatorOrientation.horizontal,
                percent: 0.7,
              ),
              SizedBox(height: 20),
              NeumorphicProgressIndeterminate(
                duration: Duration(seconds: 3),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
