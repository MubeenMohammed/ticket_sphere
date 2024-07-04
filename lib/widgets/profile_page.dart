import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  void backButtonPressed () {

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
                  height: 60,
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
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
      ],
    );
  }
}
