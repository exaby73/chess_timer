import "package:chess_timer/data/timer_data.dart";
import "package:flutter/material.dart";

class TimerItemView extends StatelessWidget {
  const TimerItemView(
    this.timer, {
    super.key,
    required this.color,
    required this.onTap,
  });

  final Color color;
  final TimerData timer;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: color,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: FittedBox(
            child: Text(
              timer.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: color.computeLuminance() > 0.5
                    ? Colors.black
                    : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
