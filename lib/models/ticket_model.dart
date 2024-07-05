import 'package:flutter/material.dart';

class TicketModel extends StatelessWidget {
  const TicketModel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      width: 200,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                "assets/ticket_images/concert-image-1.jpg",
                width: 190,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "XXXXX Club Ticket",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const Text(
              "More than 10 Biddings",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 2),
            const Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  size: 15,
                  color: Color.fromARGB(255, 75, 73, 73),
                ),
                SizedBox(width: 5),
                Text(
                  "Nov 13 | 08:00 Pm",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 2),
            const Text(
              "\$200.00",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
