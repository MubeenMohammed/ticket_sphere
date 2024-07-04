import 'package:flutter/material.dart';
import 'package:ticket_sphere/widgets/seller_home_page.dart';
import 'package:ticket_sphere/widgets/ticket_selling_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
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
              : SellerHomePage(switchScreenToSellingTicket: switchScreen),
        ),
      ),
    );
  }
}
