// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class EntradaTempoWidgtet extends StatelessWidget {
  final String title;
  final int value;
  final void Function()? increment;
  final void Function()? decrement;

  const EntradaTempoWidgtet({
    Key? key,
    required this.title,
    required this.value,
    this.increment,
    this.decrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 25),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: decrement,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.red,
                padding: const EdgeInsets.all(16),
              ),
              child: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
            ),
            Text(
              '$value min',
              style: const TextStyle(fontSize: 18),
            ),
            ElevatedButton(
              onPressed: increment,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.red,
                padding: const EdgeInsets.all(16),
              ),
              child: const Icon(
                Icons.arrow_upward,
                color: Colors.white,
              ),
            )
          ],
        ),
      ],
    );
  }
}
