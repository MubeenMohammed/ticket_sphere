import 'package:flutter/material.dart';
import 'package:ticket_sphere/models/profile_card.dart';
import 'package:ticket_sphere/models/profile_info_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  void backButtonPressed() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 60),
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
            const SizedBox(width: 115),
            const Text(
              "Profile",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const ProfileCard(),
              const SizedBox(height: 40),
              const ProfileInfoCard(
                cardIcon: Icons.person_2,
                personName: "John Doe",
              ),
              const SizedBox(height: 20),
              const ProfileInfoCard(
                cardIcon: Icons.mail,
                personName: "johndoe@gmail.com",
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Row(
                  children: [
                    Text("Change Password and Pin"),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
