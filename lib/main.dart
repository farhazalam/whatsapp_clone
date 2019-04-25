import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import './home.dart';

List<CameraDescription> cameras;

Future<void> main() async {
  cameras=await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff075E54), accentColor: Color(0xff25D366)),
      home: Home(cameras),
    );
  }
}
