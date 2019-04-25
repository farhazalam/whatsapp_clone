import 'package:flutter/material.dart';

import '../models/chat_model.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (BuildContext context,int i) => Column(
            children: <Widget>[
              Divider(
                height: 7,
              ),
              ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(chats[i].url),
                    foregroundColor: Theme.of(context).primaryColor,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        chats[i].name,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                      Text(
                        chats[i].time,
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      )
                    ],
                  ),
                  subtitle: Text(
                    chats[i].message,
                  ))
            ],
          ),
    );
  }
}
