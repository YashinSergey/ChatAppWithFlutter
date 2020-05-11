import 'package:firtsflutterapp/MainPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  bool isCodeSent = false;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Sign in'),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: isCodeSent ?
        Container(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Card(key: null,
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: controller,
                      decoration: InputDecoration(labelText: "sms code"),
                    ),
                  ),

                ),
                FlatButton(
                  color: Colors.deepOrange,
                  onPressed: () {
                    isCodeSent = false;
                    controller.clear();
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return MainPage();
                      }));
                  },
                  child: Text(
                      "check sms code"),
                  textColor: Colors.black45,
                ),
              ]

          ),
        ) : Container(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Card(key: null,
                  child:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: controller,
                      decoration: InputDecoration(labelText: "phone number", hintText: "+7"),
                    ),
                  ),
                ),
                FlatButton(
                  color: Colors.deepOrange,
                  onPressed: () {
                    setState(() {
                      isCodeSent = true;
                      controller.clear();
                    });
                  },
                  child: Text(
                      "get sms code"),
                  textColor: Colors.black45,
                ),
              ]

          ),
        ),
      ),

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
}


