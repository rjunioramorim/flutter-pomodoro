import 'package:flutter/material.dart';
import 'package:pomodoro/components/entrada_tempo.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text('Pomodoro'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              EntradaTempoWidgtet(title: 'Trabalho', value: 25),
              EntradaTempoWidgtet(title: 'Descanso', value: 5),
            ],
          )
        ],
      ),
    );
  }
}
