// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class CronometroButtonWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  final void Function()? click;

  const CronometroButtonWidget({
    Key? key,
    required this.label,
    required this.icon,
    this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          textStyle: const TextStyle(
            fontSize: 25,
          )),
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              size: 30,
              color: Colors.white,
            ),
          ),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
