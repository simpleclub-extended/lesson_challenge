import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../core/navigation/navigation.dart';
import '../../../data/repository/repository.dart';

class LessonsGrid extends StatelessWidget {
  const LessonsGrid({
    super.key,
    required this.lessons,
  });

  final List<Lesson> lessons;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 320,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      padding: const EdgeInsets.all(Constants.pagePadding).add(EdgeInsets.only(bottom: MediaQuery.paddingOf(context).bottom)),
      itemCount: lessons.length,
      itemBuilder: (context, index) {
        final lesson = lessons[index];
        final theme = Theme.of(context);
        final borderRadius = BorderRadius.circular(8);

        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
          child: InkWell(
            borderRadius: borderRadius,
            onTap: () => AppNavigation.lessonDetails(lesson.id).go(context),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Expanded(child: Ink.image(image: NetworkImage(lesson.imageUrl), fit: BoxFit.cover)),
                  Text(lesson.title, style: theme.textTheme.titleMedium),
                  Text(lesson.description),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
