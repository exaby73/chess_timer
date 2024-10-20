import "package:auto_route/annotations.dart";
import "package:chess_timer/pages/home/widgets/timer_category_view.dart";
import "package:chess_timer/state/timer_cubit.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final timerCategories = context.select(
      (TimerCubit cubit) => cubit.state.timerCategoriesOrThrow,
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(title: Text("Timers")),
          const SliverPadding(padding: EdgeInsets.symmetric(vertical: 16)),
          SliverList.builder(
            itemCount: timerCategories.length,
            itemBuilder: (context, index) {
              final category = timerCategories[index];
              return TimerCategoryView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                category,
              );
            },
          ),
        ],
      ),
    );
  }
}
