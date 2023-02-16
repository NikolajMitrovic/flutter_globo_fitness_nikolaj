import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/bmi_screen.dart';
import 'package:flutter_application_3/screens/intro_screen.dart';

void main() {
  runApp(const GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      routes: {
        '/intro': (context) => const IntroScreen(),
        '/bmi': (context) => const BmiScreen(),
      },
      // initialRoute: '/',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int id = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: () {
        switch (id) {
          case 0:
            return const IntroScreen();
          case 1:
            return const BmiScreen();

          default:
            return Container();
        }
      }(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          switch (index) {
            case 0:
              setState(() {
                id = index;
              });
              // Navigator.pushReplacementNamed(context, '/');
              break;
            case 1:
              setState(() {
                id = index;
              });
              // Navigator.pushReplacementNamed(context, '/bmi');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_weight),
            label: 'BMI',
          ),
        ],
      ),
    );
  }
}
