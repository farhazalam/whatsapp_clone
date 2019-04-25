import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

import './pages/calls.dart';
import './pages/camera.dart';
import './pages/chats.dart';
import './pages/status.dart';
import './models/popup_model.dart';

class Home extends StatefulWidget {
  final List<CameraDescription> cameras;
  Home(this.cameras);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(_handleTabIndex);
  }
  @override
  void dispose() {
   _tabController.removeListener(_handleTabIndex);
   _tabController.dispose();
       super.dispose();
  }
  void _handleTabIndex()
  {
    setState(() {
      
    });
  }
  PopupMenuButton<String> _buildPopup() {
    return PopupMenuButton<String>(
      itemBuilder: (BuildContext context) {
        return PopupModel.items.map((String s) {
          return PopupMenuItem<String>(
            value: s,
            child: Text(s),
          );
        }).toList();
      },
    );
  }

  TabBar _buildTabbar() {
    return TabBar(
      controller: _tabController,
      labelColor: Colors.white,
      indicator:
          UnderlineTabIndicator(borderSide: BorderSide(color: Colors.white)),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.camera_alt),
        ),
        Tab(
          text: 'CHATS',
        ),
        Tab(
          text: 'STATUS',
        ),
        Tab(
          text: 'CALLS',
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            Icon(Icons.search),
            _buildPopup(),
          ],
          bottom: _buildTabbar()),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraPage(widget.cameras),
          ChatsPage(),
          StatusPage(),
          CallsPage(),
        ],
      ),
      floatingActionButton: _buildActionButton(),
    );
  }
  Widget _buildActionButton()
  {
    if(_tabController.index==1)
      return FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      );
    else if(_tabController.index==2)
      return FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
      );
    else if(_tabController.index==3)
     return  FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add_call,
          color: Colors.white,
        ),
      );
    else
      return null;
  }
}
