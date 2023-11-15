import 'package:flutter/cupertino.dart';
import 'package:graduate_work/constants/constants.dart';

class WidgetStyle {
  Constants constants = Constants();
  BoxDecoration gradient(){
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment(0.4, 0.7),
        colors: <Color> [
          constants.colorPingGrad,
          constants.colorGreenGrad,
          //Color(0xFF748A78),
        ],
      ),
    );
  }
}