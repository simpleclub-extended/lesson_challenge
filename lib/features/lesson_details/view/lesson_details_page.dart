import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/core.dart';
import '../bloc/lesson_details_bloc.dart';

class LessonDetailsPage extends StatelessWidget {
  const LessonDetailsPage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LessonDetailsBloc>(
      create: (context) => LessonDetailsBloc(context.read(), id: id)
        ..add(const LessonDetailsBlocCreated()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lesson Details'),
        ),
        body: const LessonDetailsView(),
      ),
    );
  }
}

class LessonDetailsView extends StatelessWidget {
  const LessonDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LessonDetailsBloc, LessonDetailsState>(
      builder: (context, state) {
        switch (state.status) {
          case LessonDetailsStatus.initial:
          case LessonDetailsStatus.loading:
            return const Center(child: CircularProgressIndicator());
          case LessonDetailsStatus.error:
            return ErrorText(failure: state.failure!);
          case LessonDetailsStatus.success:
            // TODO Implement UI
            return const Placeholder();
        }
      },
    );
  }
}
