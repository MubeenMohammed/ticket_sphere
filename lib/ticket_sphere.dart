import 'package:flutter/material.dart';
import 'package:new_project/app_pages/login_section/login_section_container.dart';
import 'package:new_project/app_pages/navigation_pages/navigation_container.dart';
import 'package:new_project/app_pages/ticket_selling_pages/ticket_selling_page.dart';

class TicketSphere extends StatefulWidget {
  const TicketSphere({super.key});

  @override
  State<TicketSphere> createState() {
    return TicketSphereState();
  }
}

class TicketSphereState extends State<TicketSphere> {
  String activeScreen = "login-page";

  void switchScreen(String screen) {
    setState(() {
      activeScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
          child: _selectActiveScreen(),
        ),
      ),
    );
  }

  Widget _selectActiveScreen() {
    if (activeScreen == 'ticket-selling-page') {
      return TicketSellingPage(switchToHomePage: switchScreen);
    } else if (activeScreen == 'home-page') {
      return NavigationContainer(switchScreenToSellingTicket: switchScreen);
    } else {
      return const LoginSectionContainer();
    }
  }
}
