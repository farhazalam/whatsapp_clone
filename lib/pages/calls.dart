import 'package:flutter/material.dart';

import '../models/call_model.dart';

class CallsPage extends StatefulWidget {
  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callList.length,
      itemBuilder: (BuildContext context, int i) => Column(
            children: <Widget>[
              Divider(
                height: 7,
              ),
              ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(callList[i].url),
                  foregroundColor: Theme.of(context).primaryColor,
                ),
                title: Text(
                  callList[i].name,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
                ),
                subtitle: Row(
                  children: <Widget>[
                    callList[i].recieved == '1'
                        ? Icon(
                            Icons.call_received,
                            size: 17, color: Color(0xff075E54)
                          )
                        : Icon(
                            Icons.call_made,
                            size: 17, color: Color(0xff075E54)
                          ),
                    Text(
                      callList[i].time,
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
                trailing: Icon(Icons.call, color: Color(0xff075E54)),
              )
            ],
          ),
    );
  }
}
