part of 'lesson_details_bloc.dart';

abstract class LessonDetailsEvent {
  const LessonDetailsEvent();
}

class LessonDetailsBlocCreated extends LessonDetailsEvent {
  const LessonDetailsBlocCreated();
}

class LessonDetailsNextPageSelected extends LessonDetailsEvent {
  const LessonDetailsNextPageSelected();
}

class LessonDetailsPreviousPageSelected extends LessonDetailsEvent {
  const LessonDetailsPreviousPageSelected();
}
