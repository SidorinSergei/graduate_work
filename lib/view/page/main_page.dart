import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduate_work/constants/constants.dart';

class MainPage extends StatelessWidget{
  MainPage({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MainPageNavigation(),
    );
  }
}

class MainPageNavigation extends StatefulWidget{
  MainPageNavigation({super.key});

  @override
  State<MainPageNavigation> createState() => _MainPageNavigationState();
}

class _MainPageNavigationState extends State<MainPageNavigation>{
  int currentPageIndex = 0;
  Constants constants = Constants();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: constants.colorPanel,
        indicatorColor: constants.colorNavigationIcon,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(

            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Главная',
          ),
          NavigationDestination(
            icon: Icon(Icons.image_outlined),
            label: 'Моя коллекция',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.school),
            icon: Icon(Icons.school),
            label: 'Личный кабинет',

          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: constants.colorPages,
          alignment: Alignment.center,
          child: const Text('Page 1'),
        ),
        Container(
          color: constants.colorPages,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: constants.colorPages,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    );
  }
}