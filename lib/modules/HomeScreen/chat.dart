// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_chat/models/messageModel.dart';
import 'package:flutter_chat/modules/Recentchats/RecentChat.dart';
import 'package:flutter_chat/modules/categorySelector/categorySelector.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text('Chat UI',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {},
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Groups'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          categorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFEF9EB),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Favourites Contacts',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_horiz,
                              color: Colors.black, size: 30),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120.0,
                    child: ListView.builder(
                      // padding: const EdgeInsets.only(left: 10.0),
                      scrollDirection: Axis.horizontal,
                      itemCount: favorites.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: CircleAvatar(
                                radius: 35.0,
                                backgroundImage:
                                    AssetImage(favorites[index].imageUrl),
                              ),
                            ),
                            Text(favorites[index].name),
                          ],
                        );
                      },
                    ),
                  ),
                  RecentChats(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
