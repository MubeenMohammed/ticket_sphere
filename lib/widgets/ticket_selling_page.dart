import 'package:flutter/material.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        size: 28,
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    const Text(
                      "Sell A New Ticket",
                      style: TextStyle(
                        color: Color.fromARGB(251, 245, 246, 246),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Event Name",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      labelText: "Name of the Event"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
