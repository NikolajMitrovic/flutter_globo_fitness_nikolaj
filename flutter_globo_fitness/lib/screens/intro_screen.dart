import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Globo Fitness')),
      drawer: const MenuDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/fitness.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
            child: Container(
          padding: const EdgeInsets.all(24),
          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.white70),
          child: const Text('Commit to be fit, dare to be great \nwith Globo Fitness',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, shadows: [
                Shadow(offset: Offset(1.0, 1.0), blurRadius: 2.0, color: Colors.grey),
              ])),
        )),
      ),
      // bottomNavigationBar: BottomMenu(),
    );
  }
}

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, '/');
            break;
          case 1:
            Navigator.pushReplacementNamed(context, '/bmi');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.monitor_weight), label: 'BMI'),
      ],
    );
  }
}
