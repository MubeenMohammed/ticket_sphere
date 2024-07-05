import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 50,
            child: Container(
                decoration: const BoxDecoration(color: Colors.black))),
        Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 17, 11, 18)),
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Image.asset(
                "assets/ticket_sphere_logo.png",
                width: 220,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 30,
                ),
              )
            ],
          ),
        ),
        Image.asset(
          "assets/ticket_sphere_home_logo.png",
          fit: BoxFit.contain,
          width: 2000,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 10),
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Hottest Offers",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text(
                            "See all",
                            style: TextStyle(
                              color: Color.fromARGB(255, 67, 197, 125),
                              fontSize: 19,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Color.fromARGB(255, 67, 197, 125),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              
            ],
          ),
        )
      ],
    );
  }
}
