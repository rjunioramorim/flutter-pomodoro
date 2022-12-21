import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/cronometro.dart';
import 'package:pomodoro/components/entrada_tempo.dart';
import 'package:pomodoro/store/pomodoro_store.dart';
import 'package:provider/provider.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(child: CronometroWidget()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EntradaTempoWidgtet(
                    title: 'Trabalho',
                    value: store.tempoTrabalho,
                    increment: store.iniciado && store.trabalhando()
                        ? null
                        : store.incrementarTempoTrabalho,
                    decrement: store.iniciado && store.trabalhando()
                        ? null
                        : store.decrementarTempoTrabalho,
                  ),
                  EntradaTempoWidgtet(
                    title: 'Descanso',
                    value: store.tempoDescanso,
                    increment: store.iniciado && store.descansando()
                        ? null
                        : store.incrementarTempoDescanso,
                    decrement: store.iniciado && store.descansando()
                        ? null
                        : store.decrementarTempoDescanso,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
