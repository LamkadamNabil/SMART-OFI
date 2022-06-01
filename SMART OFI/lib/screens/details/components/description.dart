import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart';

import '../../../constants.dart';

class desc extends StatelessWidget {




  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("plant sain"),
        backgroundColor:kPrimaryColor,

      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 100, 20, 2),
        width: width,
        child:
        Text(
          "La plante sain farineuse est l’un des parasites les plus fréquents sur nos plantes d’intérieur. Mais on la retrouve également au jardin à la fin du printemps, en été ou à l’automne. Ses dégâts sont variables, autant que la forme qu’elle peut prendre pour se dissimuler. De forme ovale, la plante sain farineuse se recouvre souvent d’un amas blanc ou rosé qui lui donne un aspect cotonneux.\n",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kPrimaryColor,
              fontSize: 25.0,
              fontFamily: "Caveat",
              fontWeight: FontWeight.w700
          ),
        ),

    )
    );
  }
}