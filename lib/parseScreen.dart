import 'package:flutter/material.dart';

class MyParseScreen extends StatelessWidget {
  const MyParseScreen(
      {Key? key,
      required this.depatment,
      required this.time,
      required this.doctorName,
      required this.yourGender})
      : super(key: key);
  final String doctorName;
  final String depatment;
  final String time;
  final String yourGender;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Your Selected Details'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Your Colsoltant : $depatment'),
              Text('Doctor Name : $doctorName'),
              Text('Your Visit Time : $time'),
              Text('Your Gender : $yourGender'),
            ],
          ),
        ),
      ),
    );
  }
}
