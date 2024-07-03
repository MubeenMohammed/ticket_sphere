import 'package:flutter/material.dart';
import 'package:ticket_sphere/models/input_model.dart';

class TicketSellingPage extends StatelessWidget {
  const TicketSellingPage({super.key});

  void backButtonPressed() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.green,
              Colors.blue,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: [
                    InputModel(
                      inputHeader: "Event Name",
                      inputPlaceHolder: "Name of the Event",
                      isLongInput: false,
                    ),
                    InputModel(
                      inputHeader: "Description",
                      inputPlaceHolder: "Details About Tickets and Event",
                      isLongInput: true,
                    ),
                    InputModel(
                      inputHeader: "Date & Time",
                      inputPlaceHolder: "Select Date",
                      isLongInput: false,
                    ),
                    InputModel(
                      inputHeader: "Location",
                      inputPlaceHolder: "Name of the Venu",
                      isLongInput: false,
                    ),
                    InputModel(
                      inputHeader: "Starting Bid",
                      inputPlaceHolder: "Add Starting Bid",
                      isLongInput: false,
                    ),
                    InputModel(
                      inputHeader: "Number of Tickets",
                      inputPlaceHolder: "Number of Tickets",
                      isLongInput: false,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
