import 'package:flutter/material.dart';
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
 String activeScreen = "home-page";

  void switchScreen(String screen) {
    setState(() {
      activeScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home Page",
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
          child: activeScreen == 'ticket-selling-page'
              ? TicketSellingPage(switchToHomePage: switchScreen)
              : NavigationContainer(switchScreenToSellingTicket: switchScreen),
        ),
      ),
    );
  }
}
