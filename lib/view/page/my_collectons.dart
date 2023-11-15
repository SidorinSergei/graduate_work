import 'package:flutter/cupertino.dart';
import 'package:graduate_work/constants/constants.dart';
import 'package:graduate_work/view/widget/widget_style.dart';

class MyCollections extends StatefulWidget{
  MyCollections({super.key});

  @override
  State<MyCollections> createState() => _MyCollectionsState();
}

class _MyCollectionsState extends State<MyCollections>{
  Constants constant = Constants();
  WidgetStyle style = WidgetStyle();

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: style.gradient(),
      child: Text('My Collections'),
      alignment: Alignment.center,
    );
  }
}