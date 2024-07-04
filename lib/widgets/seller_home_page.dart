import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_sphere/widgets/home_section.dart';
import 'package:ticket_sphere/widgets/profile_page.dart';

class SellerHomePage extends StatefulWidget {
  const SellerHomePage({super.key, required this.switchScreenToSellingTicket});

  final Function switchScreenToSellingTicket;

  @override
  State<SellerHomePage> createState() {
    return _SellerHomePageState();
  }
}

class _SellerHomePageState extends State<SellerHomePage> {
  int _selectedIndex = 0;
  Widget currentSection = const HomeSection();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        currentSection = const HomeSection();
      }
      if (index == 1) {
        currentSection = const ProfilePage();
      }
      if (index == 2) {
        currentSection = const ProfilePage();
      }
      if (index == 3) {
        currentSection = const ProfilePage();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.green,
              Colors.blue,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: currentSection,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          widget.switchScreenToSellingTicket("ticket-selling-page");
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
