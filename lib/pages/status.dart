import 'package:flutter/material.dart';
import '../models/status_model.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      SizedBox(
        height: 12,
      ),
      ListTile(
        leading: Stack(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://scontent.fccu3-1.fna.fbcdn.net/v/t1.0-9/44625086_2027333680662770_6805907315858866176_o.jpg?_nc_cat=103&_nc_ht=scontent.fccu3-1.fna&oh=ee95e7a2a72aa041894671f1814520d2&oe=5D302113'),
              radius: 28,
            ),
            Positioned(
                height: 91,
                left: 36,
                child: CircleAvatar(
                  radius: 10,
                  child: Icon(
                    Icons.add,
                    size: 17,
                    color: Colors.white,
                  ),
                  backgroundColor: Theme.of(context).accentColor,
                ))
          ],
        ),
        title: Text(
          'My Status',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
        subtitle: Text('Tap to add status update'),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 30,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 12,
            ),
            Text('Recent updates')
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
        ),
        color: Colors.grey[100],
        margin: EdgeInsets.only(top: 05),
      ),
      Column(
          children: List.generate(
              status.length,
              (i) => ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(status[i].url),
                    ),
                    title: Text(status[i].name,style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 19),),
                    subtitle: Text(status[i].time),
                  ))),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 30,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 12,
            ),
            Text('Viewed updates')
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
        ),
        color: Colors.grey[100],
        margin: EdgeInsets.only(top: 05),
      ),
      Column(
          children: List.generate(
              statusRead.length,
              (i) => ListTile(
                    leading: CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(statusRead[i].url),
                    ),
                    title: Text(statusRead[i].name,style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 19),),
                    subtitle: Text(statusRead[i].time),
                  ))),
    ]);
  }
}
