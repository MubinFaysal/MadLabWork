import 'package:expense_app/screens/analytics_screen.dart';
import 'package:expense_app/screens/help_screen.dart';
import 'package:expense_app/screens/history_screen.dart';
import 'package:expense_app/screens/my_home_screen.dart';
import 'package:expense_app/screens/payment_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  List<Widget> screens = [
    const MyHomeScreen(),
    const PaymentScreen(),
    const HistoryScreen(),
    const AnalyticsScreen(),
    const HelpScreen(),
  ];

  void changeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
        elevation: 20,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.payment_sharp,
                color: Colors.black54,
              ),
              label: 'Payment'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.history_outlined,
                color: Colors.black54,
              ),
              label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.analytics_sharp,
                color: Colors.black54,
              ),
              label: 'Analytics'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.help,
                color: Colors.black54,
              ),
              label: 'Help'),
        ],
        currentIndex: _currentIndex,
        onTap: changeIndex,
      ),
    );
  }
}
