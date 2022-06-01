import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/reco_screen.dart';
import 'package:plant_app/widgets/home.dart';
import 'package:tflite/tflite.dart';

import 'components/my_bottom_nav_bar.dart';
import 'constants.dart';


void  main() => runApp(new SecondScreen());

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SMART O.F.I'),
        backgroundColor: kPrimaryColor,
      ),
      backgroundColor: kPrimaryColor,
      body: Center(
        child: FlatButton(
          textColor: kPrimaryColor, // foreground
          color: Color(0xfff1f1f1),

          // Within the SecondScreen widget
          onPressed: () async{

            WidgetsFlutterBinding.ensureInitialized();

            // Obtain a list of the available cameras on the device.
            final cameras =await  availableCameras();

            print("here it comes :: " +  cameras.toString());
            // Get a specific camera from the list of available cameras.
            final firstCamera = cameras.last;

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RecoScreen(firstCamera)),
            );

          },
          child: const Text('Go to real time !'),
        ),
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
void main22() {
  WidgetsFlutterBinding.ensureInitialized();
}
