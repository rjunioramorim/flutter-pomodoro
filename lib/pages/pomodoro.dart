import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro.dart';
import 'package:pomodoro/components/entrada_tempo.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: CronometroWidget()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                EntradaTempoWidgtet(title: 'Trabalho', value: 25),
                EntradaTempoWidgtet(title: 'Descanso', value: 5),
              ],
            ),
          )
        ],
      ),
    );
  }
}
