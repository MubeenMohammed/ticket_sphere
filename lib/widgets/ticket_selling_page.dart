import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TicketSellingPage extends StatelessWidget {
  const TicketSellingPage({super.key});

  void backButtonPressed() {}

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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: backButtonPressed,
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    const Text(
                      "Sell a New Ticket",
                      style: TextStyle(
                        color: Color.fromARGB(251, 245, 246, 246),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
