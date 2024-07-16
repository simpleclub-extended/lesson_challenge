import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../lessons.dart';

class LessonsPage extends StatelessWidget {
  const LessonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LessonsBloc>(
      create: (context) => LessonsBloc(context.read())..add(const LessonsBlocCreated()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lessons'),
        ),
        body: const ResponsiveContent(
          child: LessonsView(),
        ),
      ),
    );
  }
}

class LessonsView extends StatelessWidget {
  const LessonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonsBloc, LessonsState>(
      builder: (context, state) {
        switch (state.status) {
          case LessonsStatus.initial:
          case LessonsStatus.loading:
            return const Center(child: CircularProgressIndicator());
          case LessonsStatus.error:
            return ErrorText(failure: state.failure!);
          case LessonsStatus.success:
            return LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth < 600) {
                  return LessonsList(lessons: state.lessons);
                } else {
                  return LessonsGrid(lessons: state.lessons);
                }
              },
            );
        }
      },
    );
  }
}
