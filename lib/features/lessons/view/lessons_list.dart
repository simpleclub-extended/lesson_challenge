import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../core/navigation/navigation.dart';
import '../../../data/repository/repository.dart';

class LessonsList extends StatelessWidget {
  const LessonsList({
    super.key,
    required this.lessons,
  });

  final List<Lesson> lessons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(Constants.pagePadding).add(EdgeInsets.only(bottom: MediaQuery.paddingOf(context).bottom)),
      itemCount: lessons.length,
      itemBuilder: (context, index) {
        final lesson = lessons[index];
        final shape = RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        );
        return Card(
          shape: shape,
          child: ListTile(
            title: Text(lesson.title),
            subtitle: Text(lesson.description),
            leading: SizedBox(
              width: 64,
              height: 64,
              child: Image.network(lesson.imageUrl),
            ),
            shape: shape,
            onTap: () => AppNavigation.lessonDetails(lesson.id).go(context),
          ),
        );
      },
      separatorBuilder: (context, _) => const SizedBox(height: 16),
    );
  }
}
