import 'package:flutter/material.dart';
import 'package:new_project/widgets/ticket_model.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
      child: const Column(
        children: [
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          
          SizedBox(height: 60),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TicketModel(),
                SizedBox(width: 10),
                TicketModel(),
                SizedBox(width: 10),
                TicketModel(),
                SizedBox(width: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}
