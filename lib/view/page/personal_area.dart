import 'package:flutter/cupertino.dart';
import 'package:graduate_work/constants/constants.dart';
import 'package:graduate_work/view/widget/widget_style.dart';

class PersonalArea extends StatefulWidget{
  PersonalArea({super.key});

  @override
  State<PersonalArea> createState() => _PersonalAreaState();
}

class _PersonalAreaState extends State<PersonalArea>{
  Constants constants = Constants();
  WidgetStyle style = WidgetStyle();

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: style.gradient(),
      child: Text('Pelsonal Area'),
      alignment: Alignment.center,
    );
  }
}