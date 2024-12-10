import 'package:bottom_navi_bar/Left_drawer.dart';
import 'package:flutter/material.dart';
import 'Birthday.dart';
import 'Gratitude.dart';
import 'Reminder.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List _listPages = [];
  late Widget _currentPage;

  @override
  void initState() {
    super.initState();
    _listPages
      ..add(const Birthday())
      ..add(const Gratitude())
      ..add(const Reminder());
    _currentPage = const Birthday();
  }

  void _changePage(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
      _currentPage = _listPages[selectedIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom Nav Bar Demo')),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: _currentPage,
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.cake), label: 'Birthdays'),
        BottomNavigationBarItem(icon: Icon(Icons.sentiment_satisfied), label: 'Gratitude'),
        BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: 'Reminder'),
      ],
      onTap: (selectedIndex) => _changePage(selectedIndex),
      currentIndex: _currentIndex,
      ),

      drawer: const LeftDrawer(),
    );
  }
}
