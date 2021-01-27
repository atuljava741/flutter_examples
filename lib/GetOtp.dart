import 'package:flutter/material.dart';

import 'VerifyOtp.dart';

class GetOtp extends StatelessWidget {

  final mobileNumberController = TextEditingController();

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
              getMobileInput(),
              getOtpButton(context),
        ]))
     );
  }
  Widget getOtpButton(context){
    return RaisedButton(
      onPressed: () {
        onPressGetOtp(context);
      },
      child: Container(child: Text('Get OTP')),
    );
  }

  Widget getMobileInput(){
    return Container(
      padding: EdgeInsets.fromLTRB(20,0,20,20),
      width: double.infinity, // do it in both Container
      child: TextField(
        controller: mobileNumberController,
      ),
    );

  }

  void onPressGetOtp(context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => VerifyOtp()),
    );
  }
}