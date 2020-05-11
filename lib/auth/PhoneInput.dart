import 'file:///D:/Programming/Flutter/firts_flutter_app/lib/auth/SmsInput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneInput extends StatefulWidget {

  @override
  _PhoneInputState createState() => _PhoneInputState();
}

class _PhoneInputState extends State<PhoneInput> {

  bool isCodeSent = false;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: new AppBar(
        title: new Text('Sign in'),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child:
        Center(
          child: Container(
            margin: EdgeInsets.only(bottom: 200.0),
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
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: "Phone number", hintText: "+7"),
                      ),
                    ),
                  ),
                  FlatButton(
                    color: Colors.indigoAccent,
                    onPressed: () {
                        controller.clear();
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return SmsInput();
                            }));
                    },
                    child: Text(
                        "Request sms code"),
                    textColor: Colors.black45,
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}


