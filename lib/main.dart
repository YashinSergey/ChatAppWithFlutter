import 'file:///D:/Programming/Flutter/firts_flutter_app/lib/auth/PhoneInput.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {

  bool isCodeSend = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: PhoneInput(),
    );
  }
}
