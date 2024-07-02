import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TicketSellingPage extends StatelessWidget {
  const TicketSellingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 14, 49, 136),
                Color.fromARGB(255, 163, 46, 3),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ,
        ),
      ),
    );
  }
}
