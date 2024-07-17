import 'package:flutter/material.dart';
import 'package:new_project/widgets/recommended_ticket_model.dart';
import 'package:new_project/widgets/ticket_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
          child: Container(
            decoration: const BoxDecoration(color: Colors.black),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 17, 11, 18),
          ),
          padding: const EdgeInsets.fromLTRB(0, 15, 10, 15),
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
          fit: BoxFit.cover,
          width: 2000,
          height: 200,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Column(
            children: [
              Image.asset("assets/scrollable_icon.png"),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
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
                              fontSize: 17,
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
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TicketModel(),
                    SizedBox(width: 10),
                    TicketModel(),
                    SizedBox(width: 10),
                    TicketModel(),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
          child: const Text(
            "Recommended",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 19),
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 10),
                RecommendedTicketModel(),
                SizedBox(width: 10),
                RecommendedTicketModel(),
                SizedBox(width: 10),
                RecommendedTicketModel(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
