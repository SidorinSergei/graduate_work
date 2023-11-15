import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduate_work/constants/constants.dart';
import 'package:graduate_work/view/page/my_collectons.dart';
import 'package:graduate_work/view/page/page_home.dart';
import 'package:graduate_work/view/page/personal_area.dart';

class MainPage extends StatelessWidget{
  MainPage({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
            selectedIcon: Icon(Icons.image),
            icon: Icon(Icons.image_outlined),
            label: 'Моя коллекция',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.assignment_ind),
            icon: Icon(Icons.assignment_ind_outlined),
            label: 'Личный кабинет',

          ),
        ],
      ),
      body: <Widget>[
        PageHome(),
        MyCollections(),
        PersonalArea(),
      ][currentPageIndex],
    );
  }
}