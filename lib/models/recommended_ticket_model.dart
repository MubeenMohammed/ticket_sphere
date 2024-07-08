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
            Column(
              
            )
          ],
        ),
      ),
    );
  }
}
