import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/widgets/home.dart';

class RecoScreen extends StatelessWidget {

  final CameraDescription camera;

  RecoScreen(this.camera);


  @override
  Widget build(BuildContext context) {

    print("here it comes again :: " + camera.toString());

    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFFFF00FF),
      ),
      theme: ThemeData.dark(),
      home: Home(
          camera :camera
      ),
    );
  }
}
