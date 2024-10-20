import "package:chess_timer/data/timer_category.dart";
import "package:chess_timer/pages/home/widgets/timer_item_view.dart";
import "package:flutter/material.dart";

class TimerCategoryView extends StatelessWidget {
  const TimerCategoryView(
    this.category, {
    super.key,
    this.padding = EdgeInsets.zero,
  });

  final TimerCategory category;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            category.name,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),
          GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 16 / 11,
            ),
            itemCount: category.timers.length,
            itemBuilder: (context, index) {
              final timer = category.timers[index];
              return TimerItemView(
                color: category.color,
                onTap: () {},
                timer,
              );
            },
          ),
        ],
      ),
    );
  }
}
