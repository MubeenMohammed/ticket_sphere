import 'package:flutter/material.dart';

class RecommendedTicketModel extends StatelessWidget {
  const RecommendedTicketModel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 300,
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                "assets/ticket_images/concert-image-1.jpg",
                width: 80,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Frigma Night Club Ticket",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "John Doe",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Nov 13th | 08:00 Pm",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "\$200 Bid",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
