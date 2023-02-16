import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('BMI Calculator'),
    ),
    drawer: const MenuDrawer(),
    bottomNavigationBar: BottomNavigationBar(
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/');
            break;
          case 1:
            Navigator.pushNamed(context, '/bmi');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.monitor_weight), label: 'BMI'),
      ],
    ),
    body: const Center(child: FlutterLogo()),
  );
}
