import 'package:firtsflutterapp/Chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {

  List<Map<String, dynamic>> dataChats = [
    {
      "id" : "0",
      "message" : "see you",
      "title" : "Emma Watson",
      "private" : false
    },
    {
    "id" : "1",
    "message" : "you was right, as always",
    "title" : "Perelman Grigori",
    "private" : false
    },
    {
    "id" : "2",
    "message" : "I sent you interesting email",
    "title" : "Snowden Edward",
    "private" : false
    },
    {
    "id" : "3",
    "message" : "What is the dollar exchange rate tomorrow?",
    "title" : "Donnie Trump",
    "private" : false
    },
    {
    "id" : "4",
    "message" : "I told you, I'll be back!",
    "title" : "A. Schwarzenegger",
    "private" : false
    },
    {
    "id" : "5",
    "message" : "Congratulations on May 9!",
    "title" : "Angela Merkel",
    "private" : false
    },
    {
    "id" : "6",
    "message" : "What will you do on next friday?",
    "title" : "Margot Robbie",
    "private" : false
    },{
    "id" : "7",
    "message" : "Meet me at the bar",
    "title" : "Elizabeth II",
    "private" : false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: new AppBar(
        title: new Text('Chat list'),
      ),
      body:
      Center(
          child:
          ListView.builder(
            itemCount: dataChats.length,
            itemBuilder: (context, index) =>
              getInkWell(context, message: dataChats[index]["message"].toString(), title: dataChats[index]["title"].toString()),)
      ),
    );
  }

  Widget getInkWell(BuildContext context, {String title = "Chat name", String message = "last message"}) {
    return InkWell(
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) {
                return Chat();
              }));
        },
        child: Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            border: Border.all(
                color: Colors.lightBlue,
                width: 1.0,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child:
          Column(children: <Widget>[
            Text(title, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(message)
          ],
          ),
        ),
      ),
    );
  }
}