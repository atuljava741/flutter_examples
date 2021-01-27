import 'package:flutter/material.dart';

import 'GetOtp.dart';

class VerifyOtp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
              alignment: Alignment.center,
              height: double.infinity,
              width: double.infinity,
              child : new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    getOTPInput(),
                    getOtpButton(context),
                  ])),
        );
  }

  Widget getOtpButton(context){
    return Container(
      padding: const EdgeInsets.fromLTRB(0,20,0,0),
      child :RaisedButton(
        onPressed: () {
        onPressVerifyOtp(context);
      },
      child: Container(child: Text('Verify OTP')),
    ));
  }

  Widget getOTPInput(){
    return Container(
        padding: const EdgeInsets.fromLTRB(30.0,0,30,0),
        child : new Row(

      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Expanded(
          child: new Padding(
            padding: const EdgeInsets.fromLTRB(10.0,0,10,0),
            child: TextField(decoration: InputDecoration(
              //Add th Hint text here.
              border: OutlineInputBorder(),
            )),
          ),
        ),
        Expanded(
          child: new Padding(
            padding: const EdgeInsets.fromLTRB(10.0,0,10,0),
            child: TextField(decoration: InputDecoration(
              //Add th Hint text here.
              border: OutlineInputBorder(),
            )),
          ),
        ),
        Expanded(
          child: new Padding(
            padding: const EdgeInsets.fromLTRB(10.0,0,10,0),
            child: TextField(decoration: InputDecoration(
              //Add th Hint text here.
              border: OutlineInputBorder(),
            )),
          ),
        ),
        Expanded(
          child: new Padding(
            padding: const EdgeInsets.fromLTRB(10.0,0,10,0),
            child: TextField(
              decoration: InputDecoration(
                //Add th Hint text here.
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),

      ],
    ));

  }

  void onPressVerifyOtp(context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GetOtp()),
    );
  }
}