import 'package:flutter/material.dart';
import 'package:new_project/app_pages/navigation_pages/chats_page.dart';
import 'package:new_project/app_pages/navigation_pages/home_page.dart';
import 'package:new_project/app_pages/navigation_pages/profile_page.dart';
import 'package:new_project/app_pages/navigation_pages/search_page.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer(
      {super.key, required this.switchScreenToSellingTicket});

  final Function switchScreenToSellingTicket;

  @override
  State<NavigationContainer> createState() {
    return _NavigationContainerState();
  }
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectedIndex = 0;
  Widget currentSection = const HomePage();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        currentSection = const HomePage();
      }
      if (index == 1) {
        currentSection = const SearchPage();
      }
      if (index == 2) {
        currentSection = const ChatsPage();
      }
      if (index == 3) {
        currentSection = ProfilePage(
          
        );
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
