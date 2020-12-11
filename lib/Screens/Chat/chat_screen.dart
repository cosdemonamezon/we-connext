import 'package:condotoo/Model/Chat/message_model.dart';
import 'package:condotoo/Screens/Chat/components/category_selector.dart';
import 'package:condotoo/Screens/Chat/components/favorite_contacts.dart';
import 'package:condotoo/Screens/Chat/components/recent_chats.dart';
import 'package:condotoo/constants.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThemeColor,
      appBar: AppBar(
        //centerTitle: true,
        backgroundColor: kThemeColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/human1.png"),
                radius: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Admin"),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white, 
            onPressed: (){}
          ),
        ],
      ),
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
            child: Container(
              //height: 500.0,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  FavoriteContacts(),
                  RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


