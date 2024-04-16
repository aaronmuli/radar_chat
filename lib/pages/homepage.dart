import 'package:flutter/material.dart';
import 'package:radar/pages/chat.dart';
import 'package:radar/pages/settings.dart';
import 'package:radar/pages/users.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int current = 0;

  List<BottomNavigationBarItem> items = const [
      BottomNavigationBarItem(
        icon: Icon(Icons.people), 
        label: "active", 
        backgroundColor: Colors.green, 
        activeIcon: Icon(Icons.people, color: Colors.green,)
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.chat), 
        label: "chat", 
        backgroundColor: Colors.green, 
        activeIcon: Icon(Icons.chat, color: Colors.green,)
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings), 
        label: "settings", 
        backgroundColor: Colors.green, 
        activeIcon: Icon(Icons.settings, color: Colors.green,)
      ),

  ];

  List<Widget> pages = const [
    ActiveUsers(),
    Chat(),
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        selectedItemColor: const Color.fromARGB(255, 35, 221, 42),
        currentIndex: current,
        onTap: (value) => setState(() {
          current = value;
        }),
      ),
      body: pages[current],
    );
  }
}