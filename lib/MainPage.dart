import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Chat'),
      ),
      body:
        ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
          getMessage(true, "my message"),
          getMessage(false, "a message from Michael"),
          getMessage(true, "my message"),
          getMessage(false, "a message from Michael"),
          getMessage(true, "my message"),
          getMessage(false, "a message from Michael"),
          getMessage(true, "my message"),
          getMessage(false, "a message from Michael"),
          getMessage(true, "my message"),
          getMessage(false, "a message from Michael"),
          getMessage(true, "my message"),
          getMessage(false, "a message from Michael"),
          getMessage(true, "my message"),
          getMessage(false, "a message from Michael"),
          getMessage(true, "my message"),
          getMessage(false, "a message from Michael"),
          getMessage(true, "my message"),
          getMessage(false, "a message from Michael"),
        ],),

      bottomNavigationBar: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
              icon: const Icon(Icons.accessibility),
              title: new Text('Man'),
              backgroundColor: Colors.lightBlue,
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Icons.android),
              title: new Text('Android'),
              backgroundColor: Colors.lightBlue,
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Icons.add_a_photo),
              title: new Text('Camera'),
              backgroundColor: Colors.lightBlue,
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Icons.business_center),
              title: new Text('Briefcase'),
              backgroundColor: Colors.lightBlue,
            )
          ]

      ),
    );
  }

  Container getMessage(bool isYourMassage, String message){
    String contactName = isYourMassage ? "" : "Michael";
    return Container(
      margin: isYourMassage ?
      EdgeInsets.only(top: 10.0, left: 40.0) :
      EdgeInsets.only(top: 10.0, right: 40.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: isYourMassage ? Colors.deepPurpleAccent : Colors.deepOrangeAccent,
          border: Border.all(color: Colors.lightBlue, width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: isYourMassage ?
              Radius.circular(10) : Radius.circular(0),
              bottomRight: isYourMassage ?
              Radius.circular(0) : Radius.circular(10))
      ),
      child:
      Column(children: <Widget>[
        Text(contactName, textAlign: TextAlign.start,),
        Text('\n$message')
      ],)
      ,);
  }
}