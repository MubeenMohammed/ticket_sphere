import 'package:flutter/material.dart';
import 'package:new_project/widgets/profile_card.dart';
import 'package:new_project/widgets/profile_info_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 60),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
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
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: const Row(
                    children: [
                      Text(
                        "Change Password and Pin",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
