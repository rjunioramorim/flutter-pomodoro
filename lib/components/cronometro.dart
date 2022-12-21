import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro_button.dart';

class CronometroWidget extends StatelessWidget {
  const CronometroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hora de trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            '25:00',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CronometroButtonWidget(label: 'Iniciar', icon: Icons.star),
              CronometroButtonWidget(label: 'Parar', icon: Icons.stop),
              CronometroButtonWidget(label: 'Reiniciar', icon: Icons.refresh),
            ],
          )
        ],
      ),
    );
  }
}
