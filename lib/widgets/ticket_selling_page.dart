import 'package:flutter/material.dart';
import 'package:ticket_sphere/models/input_model.dart';

class TicketSellingPage extends StatelessWidget {
  const TicketSellingPage({super.key});

  void backButtonPressed() {}

  void uploadTicketPressed() {}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
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
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const InputModel(
                    inputHeader: "Event Name",
                    inputPlaceHolder: "Name of the Event",
                    isLongInput: false,
                  ),
                  const InputModel(
                    inputHeader: "Description",
                    inputPlaceHolder: "Details About Tickets and Event",
                    isLongInput: true,
                  ),
                  const InputModel(
                    inputHeader: "Date & Time",
                    inputPlaceHolder: "Select Date",
                    isLongInput: false,
                  ),
                  const InputModel(
                    inputHeader: "Location",
                    inputPlaceHolder: "Name of the Venu",
                    isLongInput: false,
                  ),
                  const InputModel(
                    inputHeader: "Starting Bid",
                    inputPlaceHolder: "Add Starting Bid",
                    isLongInput: false,
                  ),
                  const InputModel(
                    inputHeader: "Number of Tickets",
                    inputPlaceHolder: "Number of Tickets",
                    isLongInput: false,
                  ),
                  const Text(
                    "Upload ticket(s) and confirmation(s)",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(height: 20),
                  IconButton.filled(
                    onPressed: uploadTicketPressed,
                    icon: const Icon(Icons.upload),
                    style: const ButtonStyle(
                      alignment: Alignment.center,
                      backgroundColor: WidgetStatePropertyAll(Colors.white),
                      iconColor: WidgetStatePropertyAll(Colors.grey),
                      padding: WidgetStatePropertyAll(
                        EdgeInsets.fromLTRB(180, 10, 180, 10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 175, vertical: 15),
                      backgroundColor: const Color.fromARGB(255, 3, 205, 199),
                    ),
                    child: const Text(
                      "Next",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
