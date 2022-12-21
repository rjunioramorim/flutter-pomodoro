import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/cronometro_button.dart';
import 'package:pomodoro/store/pomodoro_store.dart';
import 'package:provider/provider.dart';

class CronometroWidget extends StatelessWidget {
  const CronometroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Container(
      color: store.trabalhando() ? Colors.red : Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            store.trabalhando() ? 'Hora de trabalhar' : 'Hora de descansar',
            style: const TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "${store.minutos.toString().padLeft(2, '0')}: ${store.segundos.toString().padLeft(2, '0')}",
            style: const TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Observer(
            builder: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (!store.iniciado)
                  CronometroButtonWidget(
                    label: 'Iniciar',
                    icon: Icons.play_arrow,
                    click: store.iniciar,
                  ),
                if (store.iniciado)
                  CronometroButtonWidget(
                    label: 'Parar',
                    icon: Icons.stop,
                    click: store.parar,
                  ),
                CronometroButtonWidget(
                  label: 'Reiniciar',
                  icon: Icons.refresh,
                  click: store.reiniciar,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
