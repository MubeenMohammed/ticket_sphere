import 'package:flutter/material.dart';

class InputModel extends StatelessWidget {
  const InputModel({
    super.key,
    required this.inputHeader,
    required this.inputPlaceHolder,
    required this.isLongInput,
  });

  final String inputHeader;
  final String inputPlaceHolder;
  final bool isLongInput;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          inputHeader,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: inputPlaceHolder,
          ),
          maxLines: isLongInput ? 5 : 1,
        ),
        const SizedBox(height: 15)
      ],
    );
  }
}
