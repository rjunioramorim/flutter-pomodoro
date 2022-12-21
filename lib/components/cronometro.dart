import 'package:flutter/material.dart';

class CronometroWidget extends StatelessWidget {
  const CronometroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Hora de trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            '25:00',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
